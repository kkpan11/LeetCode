class Solution {
    public int[] searchRange(int[] nums, int target) {
        int first = -1, last = -1;
        int left = 0, right = nums.length - 1;
        while (left <= right) {
            int middle = left + (right - left) / 2;
            if (target == nums[middle]) {
                first = middle;
                right = middle - 1;
            } else if (target > nums[middle]) {
                // target is on the right side
                left = middle + 1;
            } else if (target < nums[middle]) {
                // target is on the left side 
                right = middle - 1;
            }
        }

        left = 0;
        right = nums.length - 1;
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

        return new int[]{first, last};
    }
}
