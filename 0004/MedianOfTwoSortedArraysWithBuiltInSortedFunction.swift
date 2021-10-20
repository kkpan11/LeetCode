class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        let mergedNums = (nums1 + nums2).sorted()
        let length = mergedNums.count
        guard length != 1 else { return Double(mergedNums[0]) }
        if length % 2 == 1 {
            return Double(mergedNums[length/2])
        } else {
            return Double(mergedNums[length/2]+mergedNums[(length/2)-1])/2
        }
    }
}
