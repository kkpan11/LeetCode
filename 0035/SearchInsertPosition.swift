class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var low = 0
        var high = nums.count - 1
        while low <= high {
            var mid = low + (high - low) / 2
            if target == nums[mid] {
                return mid
            } else if target > nums[mid] {
                // target is on the right side
                low = mid + 1
            } else if target < nums[mid] {
                // target is on the left side
                high = mid - 1
            }
        }

        return low
    }
}
