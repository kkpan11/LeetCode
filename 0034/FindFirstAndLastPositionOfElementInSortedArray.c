/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int* searchRange(int* nums, int numsSize, int target, int* returnSize) {
    int first = -1, last = -1;
    int left = 0, right = numsSize - 1;
    while (left <= right) {
        int middle = left + (right - left) / 2;
        if (target == nums[middle]) {
            first = middle;
            right = middle - 1;
        } else if (target > nums[middle]) {
            // target in on the right side
            left = middle + 1;
        } else if (target < nums[middle]) {
            // target is on the left side
            right = middle - 1;
        }
    }

    left = 0;
    right = numsSize - 1;
    while (left <= right) {
        int middle = left + (right - left) / 2;
        if (target == nums[middle]) {
            last = middle;
            left = middle + 1;
        } else if (target > nums[middle]) {
            // target is on the right side
            left = middle + 1;
        } else if (target < nums[middle]) {
            // target is on the left side
            right = middle - 1;
        }
    }

    *returnSize = 2;
    int *result = malloc(2 * sizeof(int));
    result[0] = first;
    result[1] = last;

    return result;
}
