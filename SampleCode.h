//
//  SampleCode.hpp
//  StackedBook
//
//  Created by Michael Hatmaker on 4/6/17.
//  Copyright © 2017 Michael Hatmaker. All rights reserved.
//

#ifndef SampleCode_hpp
#define SampleCode_hpp

#include "CircularArray.h"
#include <iostream>
#include <vector>
#include <map>
using namespace std;


class SampleCode
{
public:
    void DoMain();
    
    template<class T>
    T GetMax(T a, T b);
};

struct ExampleSingleton
{
    static ExampleSingleton& instance()
    {
        static ExampleSingleton example;
        return example;
    }
    
    void Hello() { cout << "Hello, world!" << endl; }
    
private:
    ExampleSingleton() { cout << "CONSTRUCTOR" << endl; }
    ExampleSingleton(ExampleSingleton const&) = delete;
    ExampleSingleton(ExampleSingleton&&) = delete;
    ExampleSingleton& operator = (ExampleSingleton const&) = delete;
    ExampleSingleton& operator = (ExampleSingleton&&) = delete;
};

// Forward-declaration to allow use in Iter
class IntVector;

class Iter
{
public:
    Iter (const IntVector* p_vec, int pos)
    : _pos(pos), _p_vec(p_vec)
    { }
    
    // These three methods form the basis of an iterator for use with
    // a range-based for loop
    bool operator!= (const Iter& other) const
    {
        return _pos != other._pos;
    }
    
    // This method must be defined after the definition of IntVector
    // since it needs to use it
    int operator* () const;
    
    const Iter& operator++ ()
    {
        ++_pos;
        // Although not strictly necessary for a range-based for loop, following the normal
        // convention of returning a value from operator++ is a good idea
        return *this;
    }
    
private:
    int _pos;
    const IntVector *_p_vec;
};

// Here's the class from the previous forward-declaration
class IntVector
{
public:
    IntVector()
    {
    }
    
    int get(int index) const
    {
        return _data[index];
    }
    
    Iter begin() const
    {
        return Iter(this, 0);
    }
    
    Iter end() const
    {
        return Iter(this, 100);
    }
    
    void set(int index, int val)
    {
        _data[index] = val;
    }
    
private:
    int _data[100];
};

class Complex
{
public:
    Complex(double re, double im)
    : real(re), imag(im)
    { }
    
    // No need for Complex(int re) constructor because int is implicitly converted to double
    /*Complex(int re)
    : real(re), imag(0.0)
    { }*/
    
    Complex(double re)
    : real(re), imag(0.0)
    { }
    
    Complex operator+ (const Complex& other);
    Complex operator- (const Complex& other);
    Complex operator+ (const int other);
    
    friend std::ostream& operator<<(std::ostream& os, const Complex& me)
    {
        os << "[ " << me.real << " , " << me.imag << " ]";
        return os;
    }

private:
    double real;
    double imag;
};

struct A
{
    A() { }         // converting constructor (since C++11)
    A(int) { }      // converting constructor
    A(int, int) { } // converting constructor (since C++11)
};

struct B
{
    explicit B() { }
    explicit B(int) { }
    explicit B(int, int) { }
};

template <class T>
class Calc
{
public:
    T multiply(T x, T y);
    T add(T x, T y);
};



#endif /* SampleCode_hpp */
