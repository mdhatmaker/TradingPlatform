//
//  StackedOrderLevel.cpp
//  StackedBook
//
//  Created by Michael Hatmaker on 4/6/17.
//  Copyright © 2017 Michael Hatmaker. All rights reserved.
//

#include "StackedOrderLevel.h"

namespace GenericTrading
{
    void StackedOrderLevel::AddOrder(OrderId oid)
    {
        _orderIds.push_back(oid);
    }
    
    void StackedOrderLevel::UpdatePrice(TradingEngine te, Price price)
    {
        for (OrderId oid : GetOrderIds())    // order ids for this level
        {
            te.ModifyOrder(oid, price);
        }
        _price = price;
    }
    
    void StackedOrderLevel::UpdateQty(TradingEngine te, Qty qty)
    {
        /*for (OrderId oid : GetOrderIds())    // order ids for this level
        {
            te.ModifyOrder(oid, qty);
        }*/
    }
    
    void StackedOrderLevel::SubmitAllOrders(TradingEngine te)
    {
        for (OrderId oid : GetOrderIds())    // order ids for this level
        {
            te.SubmitOrder(oid);
        }
    }
    
    void StackedOrderLevel::DeleteAllOrders(TradingEngine te)
    {
        for (OrderId oid : GetOrderIds())    // order ids for this level
        {
            te.DeleteOrder(oid);
        }
    }
    
} // namespace GenericTrading
