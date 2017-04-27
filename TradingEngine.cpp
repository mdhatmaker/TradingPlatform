//
//  TradingEngine.cpp
//  StackedBook
//
//  Created by Michael Hatmaker on 4/6/17.
//  Copyright © 2017 Michael Hatmaker. All rights reserved.
//

#include "TradingEngine.h"

namespace GenericTrading
{
    OrderId TradingEngine::_nextUniqueOrderId = 1001;   // seed the order ids with a starting value
    std::map<OrderId, Order> TradingEngine::_orders;    // static map to hold the Order objects
    
    OrderId TradingEngine::GenerateOrderId()
    {
        return _nextUniqueOrderId++;
    }
    
    Instrument TradingEngine::CreateInstrument(InstrumentId iid, string instrumentName)
    {
        Instrument instrument = Instrument(iid, instrumentName);
        
        return instrument;
    }

    void TradingEngine::Subscribe(InstrumentId iid)
    {
        
    }

    Order& TradingEngine::GetOrder(OrderId oid)
    {
        return _orders[oid];
    }
    
    OrderId TradingEngine::CreateOrder(InstrumentId iid, Side side, Price price, Qty qty)
    {
        OrderId oid = GenerateOrderId();
        
        Order o = Order(oid, iid, side, price, qty);
        _orders[oid] = o;

        return oid;
    }

    void TradingEngine::SubmitOrder(OrderId oid)
    {
        _orders[oid].SetState(OrderState::Working);
    }

    void TradingEngine::DeleteOrder(OrderId oid)
    {
        _orders[oid].SetState(OrderState::Cancelled);
    }

    void TradingEngine::ModifyOrder(OrderId oid, Price price, Qty qty)
    {
        _orders[oid].SetPrice(price);
        _orders[oid].SetQty(qty);
    }

    void TradingEngine::ModifyOrder(OrderId oid, Price price)
    {
        _orders[oid].SetPrice(price);
    }

    void TradingEngine::ModifyOrder(OrderId oid, Qty qty)
    {
        _orders[oid].SetQty(qty);
    }

} // namespace GenericTrading
