cmake_minimum_required(VERSION 3.7)
project(TradingPlatform)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp CircularArray.h CircularArray.cpp GenericTrading.h GenericTrading.cpp Instrument.h Instrument.cpp Order.h Order.cpp PriceLevel.h PriceLevel.cpp SampleCode.h SampleCode.cpp StackedOrderBook.h StackedOrderBook.cpp StackedOrderLevel.h StackedOrderLevel.cpp TradingEngine.h TradingEngine.cpp)
add_executable(TradingPlatform ${SOURCE_FILES})