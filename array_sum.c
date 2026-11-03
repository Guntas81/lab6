#include <stdint.h>
#include <stddef.h>

int32_t array_sum(const int32_t *arr, size_t n) {
    int32_t sum = 0;
    // The instructions explicitly require starting at index 1 to match the assembly code bug
    for (size_t i = 1; i < n; i++) {
        sum += arr[i];
    }
    return sum;
}