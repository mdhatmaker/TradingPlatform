//
//  main.cpp
//  SimpleTrains
//
//  Created by Michael Hatmaker on 3/28/17.
//  Copyright © 2017 Michael Hatmaker. All rights reserved.
//

#include "GenericTrading.h"
#include "StackedOrderBook.h"
#include <iostream>
#include <vector>
#include <functional>
//#include "TrainRoutes.h"
#include "SampleCode.h"
#include "CircularArray.h"

using namespace std;
using namespace GenericTrading;

void Fill(InstrumentId iid, OrderId oid, Price price, Qty qty)
{
    cout << "FILL iid=" << iid << " oid=" << oid << " price=" << price << " qty=" << qty << endl;
}

void Trade(InstrumentId iid, Price price, Qty qty)
{
    cout << "TRADE iid=" << iid << " price=" << price << " qty=" << qty << endl;
}

void MarketUpdate(InstrumentId iid, vector<PriceLevel> bids, vector<PriceLevel> asks)
{
    cout << "MARKET_UPDATE iid=" << iid << endl;
    cout << "[asks] ";
    //for (size_t i = asks.size(); i-- > 0; )
    for (size_t i = 0; i < asks.size(); ++i)
    {
        cout << asks[i].GetPrice() << ":" << asks[i].GetQty() << "  ";
    }
    cout << endl;
    cout << "[bids] ";
    for (size_t i = 0; i < bids.size(); ++i)
    {
        cout << bids[i].GetPrice() << ":" << bids[i].GetQty() << "  ";
    }
    cout << endl;
}

void Reject(InstrumentId iid, OrderId oid)
{
    cout << "REJECT iid=" << iid << " oid=" << oid << endl;
}

int main(int argc, const char * argv[]) {
    auto te = TradingEngine(&Fill, &Trade, &MarketUpdate, &Reject);
    
    // Create a few dummy instruments (Instrument = a tradeable product)
    te.CreateInstrument(222, "CL MAY17");
    te.CreateInstrument(333, "CL JUN17");
    te.CreateInstrument(444, "CL JUL17");
    
    // Submit a buy order (30 @ price 5010) and a sell order (10 @ price 5040)
    InstrumentId iid = 444;
    OrderId buyOrderId = te.CreateOrder(iid, Side::Buy, 5010, 30);
    te.SubmitOrder(buyOrderId);
    OrderId sellOrderId = te.CreateOrder(iid, Side::Sell, 5040, 10);
    te.SubmitOrder(sellOrderId);
    
    // Create two stacked order books: one for offers and another for bids (each 5 levels deep
    // with qty 20 at each price level). The inside price for the stacked bids is 2095 and the
    // inside price for the the stacked asks is 3050.
    auto stackedAsks = StackedOrderBook<5>(te, iid, Side::Sell, 3050, 20);
    auto stackedBids = StackedOrderBook<5>(te, iid, Side::Buy, 2095, 20);
    
    // View the initial stacked order books
    cout << stackedAsks << endl;
    cout << stackedBids << endl;
    
    // Begin quoting the bids and view the results to ensure order state changes to "Working"
    stackedBids.StartQuoting();
    cout << stackedBids << endl;
    
    // Move the bids "out" (away from the inside market = lower price for bids)
    stackedBids.MovePriceOut();
    cout << stackedBids << endl;
    
    // Move the asks "out" (away from the inside market = higher price for asks)
    stackedAsks.MovePriceOut();
    cout << stackedAsks << endl;
    
    // Move the asks "in" twice (toward the inside market = lower price for asks)
    stackedAsks.MovePriceIn();
    stackedAsks.MovePriceIn();
    cout << stackedAsks << endl;
    
    // IGNORE BELOW...used to test sample code
    /*auto calc = TrainRoutes::RouteCalculator();
    calc.DoMain();
    
    ExampleSingleton::instance().Hello();
    ExampleSingleton::instance().Hello();*/
    
    //SampleCode sample;
    //sample.DoMain();
    
    
    return 0;
}
