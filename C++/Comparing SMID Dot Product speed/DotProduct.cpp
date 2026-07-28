#include <iostream>
#include "DotProduct.h"
using namespace std;
int DotProduct(int A[] ,int B[], int C, int size){
    for(int i =0;i<size;i++){
        C = C +A[i]*B[i];
    }
    return C;
} 
