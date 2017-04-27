//
//  StackedOrderLevel.hpp
//  StackedBook
//
//  Created by Michael Hatmaker on 4/6/17.
//  Copyright © 2017 Michael Hatmaker. All rights reserved.
//

#ifndef StackedOrderLevel_hpp
#define StackedOrderLevel_hpp

#include "GenericTrading.h"
#include "TradingEngine.h"
#include "Order.h"

namespace GenericTrading
{
    class StackedOrderLevel
    {
    public:
        StackedOrderLevel() { };
        StackedOrderLevel(Price price, Qty qty)
        : _price(price), _qty(qty)
        {
            
        }
        
        Price GetPrice() const { return _price; }
        Qty GetQty() const { return _qty; }
        Qty GetWorkingQty() const { return 0; }
        vector<OrderId> GetOrderIds() const { return _orderIds; }
        
        void AddOrder(OrderId oid);
        void UpdatePrice(TradingEngine te, Price price);
        void UpdateQty(TradingEngine te, Qty qty);
        void SubmitAllOrders(TradingEngine te);
        void DeleteAllOrders(TradingEngine te);
        
        static vector<StackedOrderLevel> GetRandomStackLevels(Price centerPrice, uint levelCount, int increment, Qty qty = 0);
        
    private:
        Price _price;                   // price (in ticks) of this "level" in the stacked order book
        Qty _qty;                       // the total quantity to work for this level
        vector<OrderId> _orderIds;      // order ids of working orders (oldest to newest) for this level
    };
    
} // namespace GenericTrading

#endif /* StackedOrderLevel_hpp */
