//
//  StackedOrderBook.hpp
//  StackedBook
//
//  Created by Michael Hatmaker on 4/6/17.
//  Copyright © 2017 Michael Hatmaker. All rights reserved.
//

#ifndef StackedOrderBook_hpp
#define StackedOrderBook_hpp

#include "GenericTrading.h"
#include "TradingEngine.h"
#include "StackedOrderLevel.h"
#include "CircularArray.h"

namespace GenericTrading
{
    template<size_t SIZE>
    class StackedOrderBook
    {
    public:
        StackedOrderBook(TradingEngine te, InstrumentId iid, Side side, Price insidePrice, Qty insideQty)
        : _te(te), _iid(iid), _side(side), _insidePrice(insidePrice), _insideQty(insideQty)
        {
            Qty qty = insideQty;
            for (size_t i = 0; i < SIZE; ++i)   // iterate for each desired price level (StackedOrderLevel)
            {
                Price price = CalculatePriceForLevel(insidePrice, i);
                auto level = StackedOrderLevel(price, qty);
                
                // For testing purposes, create 3 orders at this price level (whose quantities
                // sum to the total qty to quote for each price level).
                // For non-testing, we will create a single order for the entire desired qty.
                OrderId oid = te.CreateOrder(iid, side, price, qty);
                level.AddOrder(oid);
                /*OrderId oid1 = te.CreateOrder(iid, side, price, qty-10);
                level.AddOrder(oid1);
                OrderId oid2 = te.CreateOrder(iid, side, price, 5);
                level.AddOrder(oid2);
                OrderId oid3 = te.CreateOrder(iid, side, price, 5);
                level.AddOrder(oid3);*/
                
                _levels[i] = level;         // place the newly create level into the CircularArray
            }
        }
        
        size_t GetCount() const { return SIZE; }
        StackedOrderLevel GetLevelAt(size_t i)  { return _levels[i]; }
        vector<Order> GetOrdersAt(size_t i);

        void MovePriceIn();         // move stacked price levels closer to inside market
        void MovePriceOut();        // move stacked price levels further from inside market
        
        void StartQuoting();        // activate the orders at each stack level (submit orders)
        void StopQuoting();         // pull the orders at each stack level (cancel orders)
        
        bool IsQuoting() { return _isQuoting; }
        
        friend std::ostream& operator<<(std::ostream& os,  StackedOrderBook& stacked)
        {
            for (size_t i = 0; i < stacked.GetCount(); ++i)
            {
                StackedOrderLevel level = stacked.GetLevelAt(i);
                string sideText = (stacked._side == Side::Buy ? "bid" : "ask");
                os << "[" << sideText << " " << i << "] " << level.GetPrice() << ":" << level.GetQty() << endl;
                vector<Order> orders = stacked.GetOrdersAt(i);
                int j = 0;
                for_each(begin(orders), end(orders), [&os, &j](Order order)
                {
                    os << "    " << order << endl;
                });
            }
            
            return os;
        }
        
    private:
        TradingEngine _te;              // TradingEngine to be used to manipulate orders
        uint _iid;                      // InstrumentId of this stacked order book
        Side _side;                     // Buy or Sell (whether this stacked order book represents BIDS or ASKS)
        Price _insidePrice;             // Inside price (in ticks) for this stacked order book
        Qty _insideQty;                 // Inside qty for the innermost level in this stacked order book
        bool _isQuoting = false;        // Are we currently working the orders in this stacked order book?
        
        // (code to deal with non-inside quantities being different)
        
        // Levels in the stack start at zero (inside price level) and increment as stack levels
        // get further out from the inside market
        tools::CircularArray<StackedOrderLevel, SIZE> _levels;
        
        Price CalculatePriceForLevel(Price insidePrice, size_t i);
        Qty CalculateQtyForLevel(size_t i);
    };

    // Get a vector containing the Order objects for a specified stacked order level
    template<size_t SIZE>
    vector<Order> StackedOrderBook<SIZE>::GetOrdersAt(size_t i)
    {
        vector<Order> orders;
        vector<OrderId> oids = _levels[i].GetOrderIds();
        for (OrderId oid : oids)
        {
            orders.push_back(_te.GetOrder(oid));
        }
        return orders;
    }
    
    // Shift (reprice) all stacked order levels toward the inside market
    template<size_t SIZE>
    void StackedOrderBook<SIZE>::MovePriceIn()
    {
        size_t lastIndex = (_levels.size()-1);
        Price p;
        Qty q;
        
        switch (_side)
        {
            case Side::Buy:
                p = CalculatePriceForLevel(++_insidePrice, 0);
                q = CalculateQtyForLevel(0);
                break;
            case Side::Sell:
                p = CalculatePriceForLevel(--_insidePrice, 0);
                q = CalculateQtyForLevel(0);
                break;
        }
        
        _levels[lastIndex].UpdatePrice(_te, p);
        _levels[lastIndex].UpdateQty(_te, q);
        _levels.head_prev();
    }
    
    // Shift (reprice) all stacked order levels away from the inside market
    template<size_t SIZE>
    void StackedOrderBook<SIZE>::MovePriceOut()
    {
        size_t lastIndex = (_levels.size()-1);
        Price p;
        Qty q;

        switch (_side)
         {
             case Side::Buy:
                 p = CalculatePriceForLevel(--_insidePrice, lastIndex);
                 q = CalculateQtyForLevel(lastIndex);
                 break;
             case Side::Sell:
                 p = CalculatePriceForLevel(++_insidePrice, lastIndex);
                 q = CalculateQtyForLevel(lastIndex);
                 break;
         }
        
        _levels[0].UpdatePrice(_te, p);
        _levels[0].UpdateQty(_te, q);
        _levels.head_next();
    }
    
    // Start quoting all price levels in this stacked order book
    template<size_t SIZE>
    void StackedOrderBook<SIZE>::StartQuoting()
    {
        if (_isQuoting == true) return;
        
        // Submit orders so they are active (working orders)
        for (int i = 0; i < SIZE; ++i) { _levels[i].SubmitAllOrders(_te); }
        
        _isQuoting = true;
    }
    
    // Stop quoting all price levels in this stacked order book
    template<size_t SIZE>
    void StackedOrderBook<SIZE>::StopQuoting()
    {
        if (_isQuoting == false) return;
        
        // Cancel working orders
        for (int i = 0; i < SIZE; ++i) { _levels[i].DeleteAllOrders(_te); }
        
        _isQuoting = false;
    }
    
    template<size_t SIZE>
    Price StackedOrderBook<SIZE>::CalculatePriceForLevel(Price insidePrice, size_t i)
    {
        int multiplier = (_side == Side::Buy ? -1 : 1);
        Price result = insidePrice + (multiplier * (int)i);
        return result;
    }
    
    template<size_t SIZE>
    Qty StackedOrderBook<SIZE>::CalculateQtyForLevel(size_t i)
    {
        return _insideQty;  // for now we'll use a single qty for all levels
    }
    
} // namespace GenericTrading

#endif /* StackedOrderBook_hpp */
