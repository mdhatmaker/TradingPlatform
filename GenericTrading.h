//
//  GenericTrading.hpp
//  StackedBook
//
//  Created by Michael Hatmaker on 4/5/17.
//  Copyright © 2017 Michael Hatmaker. All rights reserved.
//

#ifndef GenericTrading_hpp
#define GenericTrading_hpp

#import <functional>
#import <vector>
#import <random>
#import <map>

using namespace std;

namespace GenericTrading
{
    enum class Side { Buy, Sell };
    enum class OrderState { New, Submitted, Working, PartiallyFilled, Filled, Cancelled, Rejected };
    
    static map<Side, string> SideText = {
        {Side::Buy, "Buy"},
        {Side::Sell, "Sell"}
    };
    
    //static map<OrderState, string> OrderStateText;
    static map<OrderState, string> OrderStateText = {
        {OrderState::New, "New"},
        {OrderState::Submitted, "Submitted"},
        {OrderState::Working, "Working"},
        {OrderState::PartiallyFilled, "PartiallyFilled"},
        {OrderState::Filled, "Filled"},
        {OrderState::Cancelled, "Cancelled"},
        {OrderState::Rejected, "Rejected"}
    };

    typedef unsigned int uint;
        
    typedef uint InstrumentId;      // instrument identifier (uint)
    typedef uint OrderId;           // order identifier (uint)
    typedef int Price;              // price in ticks (can be negative)
    typedef uint Qty;               // qty is always non-negative

} // namespace GenericTrading

#endif /* GenericTrading_hpp */
