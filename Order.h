//
//  Order.hpp
//  StackedBook
//
//  Created by Michael Hatmaker on 4/6/17.
//  Copyright © 2017 Michael Hatmaker. All rights reserved.
//

#ifndef Order_hpp
#define Order_hpp

#include "GenericTrading.h"
#include <iostream>

namespace GenericTrading
{
    class Order
    {
    public:
        Order() { /*cout << "Order CONSTRUCTOR: ()" << endl;*/ }
        Order(OrderId oid, InstrumentId iid, Side side, Price price, Qty qty)
        : _oid(oid), _iid(iid), _side(side), _price(price), _qty(qty)
        {
            _state = OrderState::New;
            //cout << "Order CONSTRUCTOR: (" << oid << ", " << iid << ", " << SideText[side] << ", " << price << ", " << qty << ")" << endl;
        }
        
        OrderId GetId() { return _oid; }
        OrderState GetState() { return _state; }
        void SetState(OrderState state) { _state = state; }
        void SetPrice(Price price) { _price = price; }
        void SetQty(Qty qty) { _qty = qty; }
        
        friend std::ostream& operator<<(std::ostream& os, const Order& order)
        {
            string sideText = (order._side == Side::Buy ? "BUY" : "SELL");
            os << "oid=" << order._oid << " iid=" << order._iid << " " << sideText << " " << order._price << ":" << order._qty << " (" << OrderStateText[order._state] << ")";
            
            return os;
        }
        
    private:
        InstrumentId _iid;
        Side _side;
        Price _price;
        Qty _qty;
        OrderState _state; // = OrderState::New;
        OrderId _oid;
        
        //OrderId GenerateOrderId();
        //static OrderId _previousOrderId;        // what's the proper way to initialize this to a non-zero value?
    };

} // namespace GenericTrading

#endif /* Order_hpp */
