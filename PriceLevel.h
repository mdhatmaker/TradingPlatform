//
//  PriceLevel.hpp
//  StackedBook
//
//  Created by Michael Hatmaker on 4/6/17.
//  Copyright © 2017 Michael Hatmaker. All rights reserved.
//

#ifndef PriceLevel_hpp
#define PriceLevel_hpp

#include "GenericTrading.h"

namespace GenericTrading
{
    class PriceLevel
    {
    public:
        PriceLevel(Price price, Qty qty)
        : _price(price), _qty(qty)
        {
            
        }
        
        Price GetPrice() { return _price; }
        Qty GetQty() { return _qty; }
        
        static vector<PriceLevel> GetRandomPriceLevels(Price centerPrice, uint levelCount, int increment, Qty qty = 0);
        
    private:
        Price _price;
        Qty _qty;
    };

    /*class TwoSidedMarket
    {
    public:
        TwoSidedMarket()
        {
            _bids = vector<PriceLevel>();
            _asks = vector<PriceLevel>();
        }
        
    private:
        vector<PriceLevel> _asks;
        vector<PriceLevel> _bids;
    };*/

}

#endif /* PriceLevel_hpp */
