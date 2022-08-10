class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        var first = -1, last = -1
        var left = 0
        var right = nums.count - 1
        while left <= right {
            var middle = left + (right - left) / 2
            if target == nums[middle] {
                first = middle
                right = middle - 1
            } else if target > nums[middle] {
                // target is on the right side
                left = middle + 1
            } else if target < nums[middle] {
                // target is on the left side
                right = middle - 1
            }
        }

        left = 0
        right = nums.count - 1
        while left <= right {
            var middle = left + (right - left) / 2
            if target == nums[middle] {
                last = middle
                left = middle + 1
            } else if target > nums[middle] {
                // target is on the right side
                left = middle + 1
            } else if target < nums[middle] {
                // target is on the left side
                right = middle - 1
            }
        }

        return [first, last]
    }
}
