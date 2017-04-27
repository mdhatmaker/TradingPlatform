//
//  PriceLevel.cpp
//  StackedBook
//
//  Created by Michael Hatmaker on 4/6/17.
//  Copyright © 2017 Michael Hatmaker. All rights reserved.
//

#include "PriceLevel.h"

namespace GenericTrading
{
    
    vector<PriceLevel> PriceLevel::GetRandomPriceLevels(Price centerPrice, uint levelCount, int increment, Qty qty)
    {
        auto v = vector<PriceLevel>();
        
        Price price = centerPrice + increment;
        Qty quantity = qty;
        for (uint i = 0; i < levelCount; ++i)
        {
            // Passing in zero for Qty arg gives random quantities
            if (qty == 0)
            {
                quantity = rand() % 800 + 100;
            }
            
            v.push_back(PriceLevel(price, quantity));
            price += increment;
        }
        
        return v;
    }
        
} // namespace GenericTrading
