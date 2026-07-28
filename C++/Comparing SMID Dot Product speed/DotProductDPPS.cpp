#include <immintrin.h>
// sse AVX as it hass mm_dp_ps in it and sse 4.2 does not 
#include <iostream>
#include "DotProductDPPS.h"
using namespace std;

float DotProductDPPS(const float* A, const float* B, int size) {
    __m256 sum = _mm256_setzero_ps(); 

    // We will process 8 elements at a time
    for (int i = 0; i < size; i += 8) {
        __m256 vec_a = _mm256_loadu_ps(&A[i]);
        __m256 vec_b = _mm256_loadu_ps(&B[i]);

        // Perform dot product on 8 elements
        __m256 dp = _mm256_dp_ps(vec_a, vec_b, 0xF1); // Control byte: 0xF1 for all elements becasue we set bottom as off and top on 

        // Accumulate the result
        sum = _mm256_add_ps(sum, dp);
    }

    // Extract the horizontal sum of the final result
    float result[8];
    _mm256_storeu_ps(result, sum);

    // Accumulate the sum of all 8 floats in the result array
    float final_result = 0.0f;
    for (int i = 0; i < 8; ++i) {
        final_result += result[i];
    }

    return final_result;
}

