#include <iostream>
#include <windows.h>
#include "DotProduct.h"
using namespace std;

double PCFreq = 0.0;
__int64 CounterStart = 0;

void StartCounter()
{
    LARGE_INTEGER li;
    if (!QueryPerformanceFrequency(&li))
        cout << "QueryPerformanceFrequency failed!\n";
    PCFreq = double(li.QuadPart) / 1.0;
    QueryPerformanceCounter(&li);
    CounterStart = li.QuadPart;
}

double GetCounter()
{
    LARGE_INTEGER li;
    QueryPerformanceCounter(&li);
    return double(li.QuadPart - CounterStart) / PCFreq;
}

int main()
{
    int A[65536];
    int B[65536];
    for (int i = 0; i < 65536; i++) {
        A[i] = 1;
        B[i] = 2;
    }
    int C=0;
    StartCounter();
    C=DotProduct(A,B,C,65536);
    cout<<GetCounter()<<" s"<<endl;
    return 0;
}