#include <stdlib.h>
#include <stdbool.h>

/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int* twoOutOfThree(int* nums1, int nums1Size, int* nums2, int nums2Size, int* nums3, int nums3Size, int* returnSize) {
    int countArray[3][101] = {0};
    bool picked[101] = {false};
    *returnSize = 0;

    for (int i = 0; i < nums1Size; ++i) {
        int value = nums1[i];
        countArray[0][value] = 1;
    }

    for (int i = 0; i < nums2Size; ++i) {
        int value = nums2[i];
        countArray[1][value] = 1;
    }

    for (int i = 0; i < nums3Size; ++i) {
        int value = nums3[i];
        countArray[2][value] = 1;
    }

    for (int i = 1; i <= 100; ++i) {
        if (countArray[0][i] + countArray[1][i] + countArray[2][i] > 1) {
            picked[i] = true;
            (*returnSize)++;
        }
    }

    int *result = malloc((*returnSize) * sizeof(int));
    int index = 0;

    for (int i = 1; i <= 100; ++i) {
        if (picked[i] == true) {
            result[index] = i;
            index++;
        }
    }
    
    return result;
}
