//
//  CircularArray.hpp
//  StackedBook
//
//  Created by Michael Hatmaker on 4/7/17.
//  Copyright © 2017 Michael Hatmaker. All rights reserved.
//

#ifndef CircularArray_hpp
#define CircularArray_hpp

#include <iostream>
using namespace std;

namespace tools
{
    template<class T, size_t SIZE>
    class CircularArray
    {
        T* data;
        size_t beginPosition;
        size_t endPosition;
        
        class Iterator {
            T* data;
            size_t position;
        public:
            Iterator(T* _data, size_t _position)
            : data(_data), position(_position)
            { }
            
            T& operator*() { return data[position % SIZE]; }
            Iterator& operator++()
            {
                ++position;
                return *this;
            }
            bool operator!= (const Iterator& it) const { return position != it.position; }
        };
        
        /*class ConstIterator {
            T* data;
            int position;
        public:
            ConstIterator(T* _data, int _position)
            : data(_data), position(_position)
            { }
            
            const T& operator*() const { return data[position]; }
            ConstIterator& operator++()
            {
                if (++position == SIZE) position = 0;
                return *this;
            }
            bool operator!= (const ConstIterator& it) const
            {
                return position != it.position;
            }
        };*/
    
    public:
        CircularArray()
        {
            data = new T[SIZE];
            beginPosition = SIZE_T_MAX / 2;         // start at big positive number to use modulo
            endPosition = beginPosition + SIZE;
        }
        
        size_t size() { return SIZE; }
        T& operator[](size_t i)
        {
            //if (i > SIZE) { cout << "Index out of bounds\n"; return data[0]; }
            int imod = (beginPosition + i) % SIZE;
            return data[imod];
        }
        void head_next()
        {
            ++beginPosition;
            ++endPosition;
        }
        void head_prev()
        {
            --beginPosition;
            --endPosition;
        }
        
        T& head() { return this[0]; }
        T& tail() { return this[SIZE-1]; }
        
        Iterator begin() { return { data, beginPosition }; }
        Iterator end() { return { data, endPosition }; }
        
        /*ConstIterator begin() const { return { data, beginPosition }; }
        ConstIterator end() const { return { data, endPosition }; }*/
    };
    
}

#endif /* CircularArray_hpp */
