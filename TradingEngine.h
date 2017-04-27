//
//  TradingEngine.hpp
//  StackedBook
//
//  Created by Michael Hatmaker on 4/6/17.
//  Copyright © 2017 Michael Hatmaker. All rights reserved.
//

#ifndef TradingEngine_hpp
#define TradingEngine_hpp

#include "GenericTrading.h"
#include "Instrument.h"
#include "Order.h"
#include "PriceLevel.h"
#include <map>

namespace GenericTrading
{
    typedef std::function<void(InstrumentId, OrderId, Price, Qty)> FillCallback;
    typedef std::function<void(InstrumentId, Price, Qty)> TradeCallback;
    typedef std::function<void(InstrumentId, vector<PriceLevel>, vector<PriceLevel>)> MarketUpdateCallback;
    typedef std::function<void(InstrumentId, OrderId)> RejectCallback;

    class TradingEngine
    {
    public:
        TradingEngine(FillCallback fill, TradeCallback trade, MarketUpdateCallback marketUpdate, RejectCallback reject)
        : _fill(fill), _trade(trade), _marketUpdate(marketUpdate), _reject(reject)
        {
            /*auto bids = PriceLevel::GetRandomPriceLevels(3322, 5, -1);
            auto asks = PriceLevel::GetRandomPriceLevels(3322, 5, 1);
            
            _fill(222, 11, 111, 1);
            _trade(333, 5010, 2);
            _marketUpdate(444, bids, asks);
            _reject(333, 1001);*/
        }
        
        void Subscribe(InstrumentId iid);
        Instrument CreateInstrument(InstrumentId iid, string instrumentName);
        OrderId CreateOrder(InstrumentId iid, Side side, Price price, Qty qty);
        void SubmitOrder(OrderId oid);
        void DeleteOrder(OrderId oid);
        void ModifyOrder(OrderId oid, Price price, Qty qty);
        void ModifyOrder(OrderId oid, Price price);
        void ModifyOrder(OrderId oid, Qty qty);
        Order& GetOrder(OrderId oid);
        OrderId GenerateOrderId();
        
    private:
        FillCallback _fill;
        TradeCallback _trade;
        MarketUpdateCallback _marketUpdate;
        RejectCallback _reject;
        
        static OrderId _nextUniqueOrderId;
        static std::map<OrderId, Order> _orders;
        
        //vector<PriceLevel> _bids;
        //vector<PriceLevel> _asks;
    };

} // namespace GenericTrading

#endif /* TradingEngine_hpp */
