bool search(int* nums, int numsSize, int target) {
    int left = 0, right = numsSize - 1;
    while (left <= right) {
        // Skip duplcates from the left side.
        while (left < right && nums[left] == nums[left+1]) {
            left++;
        }

        // Skip duplcates from the right side.
        while (right > left && nums[right] == nums[right-1]) {
            right--;
        }

        int middle = left + (right - left) / 2;

        if (target == nums[middle]) {
            return true;
        }

        // There exists rotation; the middle element is in the left side of the array.
        if (nums[middle] > nums[right]) {
            if (target < nums[middle] && target >= nums[left]) {
                right = middle - 1;
            } else {
                left = middle + 1;
            }
        }
        // There exists rotation; the middle element is in the right side of the array.
        else if (nums[middle] < nums[left]) {
            if (target > nums[middle] && target <= nums[right]) {
                left = middle + 1;
            } else {
                right = middle - 1;
            }
        }
        // There is no rotation, just like normal binary search.
        else {
            if (target < nums[middle]) {
                right = middle - 1;                
            } else {
                left = middle + 1;
            }
        }
    }

    return false;
}
