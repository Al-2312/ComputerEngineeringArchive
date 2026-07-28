#include <immintrin.h>
// AVX as it hass mm_dp_ps in it and AVX does not 
#include <iostream>
#include <windows.h>
#include "DotProductDPPS.h"
using namespace std; 

double PCFreq = 0.0;
__int64 CounterStart = 0;

void StartCounter()
{
    LARGE_INTEGER li;
    if (!QueryPerformanceFrequency(&li))
        cout << "QueryPerformanceFrequency failed!\n";
    PCFreq = double(li.QuadPart);
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
        int size = 65536; 
        float A[65536], B[65536];

        // Initialize arrays
        for (int i = 0; i < size;++ i) {
            A[i] = 1.0; 
            B[i] = 2.0; 
        }
        StartCounter();
        float result = DotProductDPPS(A, B, size);
        cout << "Dot Product Time: " << GetCounter() << " S"<<endl;

        return 0;
}