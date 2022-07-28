int searchInsert(int* nums, int numsSize, int target) {
    int low = 0;
    int high = numsSize - 1;
    while (low <= high) {
        int mid = low + (high - low) / 2;
        if (target == nums[mid]) {
            return mid;
        } else if (target > nums[mid]) {
            // target is on the right side
            low = mid + 1;
        } else if (target < nums[mid]) {
            // target is on the left side
            high = mid - 1;
        }
    }

    return low;
}