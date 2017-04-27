//
//  SampleCode.cpp
//  StackedBook
//
//  Created by Michael Hatmaker on 4/6/17.
//  Copyright © 2017 Michael Hatmaker. All rights reserved.
//

#include "SampleCode.h"


int Iter::operator* () const
{
    return _p_vec->get(_pos);
}

Complex Complex::operator+(const Complex& other)
{
    double result_real = real + other.real;
    double result_imaginary = imag + other.imag;
    return Complex(result_real, result_imaginary);
}

Complex Complex::operator+(const int other)
{
    double result_real = real + other;
    double result_imaginary = imag;
    return Complex(result_real, result_imaginary);
}

template<class T>
T SampleCode::GetMax(T a, T b)
{
    return (a > b ? a : b);
}

template <class T>
T Calc<T>::multiply(T x, T y)
{
    return x * y;
}

template <class T>
T Calc<T>::add(T x, T y)
{
    return x + y;
}

//-------------------------------------------------------------------------------------------
void SampleCode::DoMain()
{
    cout << "*** DoMain() ***" << endl;
    
    // ********* range-based for loops *********
    
    // Iterate over vector
    vector<int> vec;
    vec.push_back(10);
    vec.push_back(20);
    for (int i : vec)
    {
        cout << i << endl;
    }
    
    // Iterate over map
    map<string, string> address_book {
        { "Joe", "312-555-1000" },
        { "Mary", "312-555-2000"}
    };
    for (auto address_entry : address_book)
    {
        cout << address_entry.first << " <" << address_entry.second << ">" << endl;
    }
    
    // Modify contents of a vector
    vector<int> v1;
    v1.push_back(1);
    v1.push_back(2);
    for (int& i : v1)
    {
        i++;    // increment the value in the vector
    }
    for (int i : v1)
    {
        cout << i << endl;  // display the updated values
    }
    
    // Sample usage of range-based for loop on IntVector
    IntVector v;
    for (int i = 0; i < 100; i++)
    {
        v.set(i, i);
    }
    for (int i : v)
    {
        cout << i << endl;
    }
    
    // ********* operator overloading *********
    
    Complex a(1.2, 1.3);
    Complex b(2.1, 3);
    Complex c = a + b;
    cout << c << endl;
    
    // If the integer 2 can be converted by the Complex class, this expression is valid
    //Complex c2 = 2 + b;
    Complex c2 = b + 2;     // TODO: so I can get this to work but not when int is first arg (?)
    cout << c2 << endl;
    
    // ********* converting constructors *********
    
    A a1 = 1;      // OK: copy-initialization selects A::A(int)
    A a2(2);       // OK: direct-initialization selects A::A(int)
    A a3{4, 5};    // OK: direct-list-initialization selects A::A(int, int)
    A a4 = {4, 5}; // OK: copy-list-initialization selects A::A(int, int)
    A a5 = (A)1;   // OK: explicit cast performs static_cast, direct-initialization
    cout << &a1 << &a5 << endl;
    
    //  B b1 = 1;      // error: copy-initialization does not consider B::B(int)
    B b2(2);       // OK: direct-initialization selects B::B(int)
    B b3{4, 5};    // OK: direct-list-initialization selects B::B(int, int)
    //  B b4 = {4, 5}; // error: copy-list-initialization selected an explicit constructor B::B(int, int)

    B b5 = (B)1;   // OK: explicit cast performs static_cast, direct-initialization
    B b6;          // OK, default-initialization
    B b7{};        // OK, direct-list-initialization
    //  B b8 = {};     // error: copy-list-initialization selected an explicit constructor B::B()
    cout << &b5 << endl;
    
    int imax = GetMax(7, 2);
    cout << imax << endl;
    
    tools::CircularArray<int, 5> arr;
    for (int i = 0; i < arr.size(); ++i)
    {
        //arr[i] = (i+1) * 10 + (i+1);
        arr[i] = (i+1);
    }
    
    for (int x: arr) { cout << x << " "; }
    cout << endl;
    //for (int& i: arr) { ++i; }
    //for (int i: arr) { cout << i << endl; }
    
    for (int i = 0; i < 6; ++i)
    {
        arr.head_prev();
        for (int x: arr) { cout << x << " "; }
        cout << endl;
    }
    
    for (int i = 0; i < 6; ++i)
    {
        arr.head_next();
        for (int x: arr) { cout << x << " "; }
        cout << endl;
    }
    
    Calc<int> calc;
    auto result1 = calc.add(5, 3);
    auto result2 = calc.multiply(5, 3);
    cout << "results: " << result1 << " " << result2 << endl;
    
} // DoMain()
