int search(int* nums, int numsSize, int target) {
    int left = 0, right = numsSize - 1;
    while (left <= right) {
        int middle = left + (right - left) / 2;

        if (target == nums[middle]) {
            return middle;
        }

        if (nums[middle] > nums[right]) {
            // There exists rotation; the middle element is in the left part of the array.
            if (target < nums[middle] && target >= nums[left]) {
                right = middle - 1;
            } else {
                left = middle + 1;
            }
        } else if (nums[middle] < nums[left]) {
            // There exists rotation; the middle element is in the right part of the array.
            if (target > nums[middle] && target <= nums[right]) {
                left = middle + 1;
            } else {
                right = middle - 1;
            }
        } else {
            // There is no rotation; just like normal binary search.
            if (target < nums[middle]) {
                right = middle - 1;
            } else {
                left = middle + 1;
            }
        }
    }

    return -1;
}
