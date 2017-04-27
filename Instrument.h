//
//  Instrument.hpp
//  StackedBook
//
//  Created by Michael Hatmaker on 4/6/17.
//  Copyright © 2017 Michael Hatmaker. All rights reserved.
//

#ifndef Instrument_hpp
#define Instrument_hpp

#include "GenericTrading.h"

namespace GenericTrading
{
    class Instrument
    {
    public:
        Instrument(InstrumentId iid, string instrumentName)
        : _iid(iid), _instrumentName(instrumentName)
        {
            
        }
        
        InstrumentId GetId() { return _iid; }
        
    private:
        InstrumentId _iid;
        string _instrumentName;
    };

} // namespace GenericTrading

#endif /* Instrument_hpp */
