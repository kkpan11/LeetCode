class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        guard nums1.count <= nums2.count else { return findMedianSortedArrays(nums2, nums1) }

        let nums1Size = nums1.count
        let nums2Size = nums2.count
        let halfLength = (nums1Size + nums2Size + 1) / 2
        var iMin = 0, iMax = nums1Size

        while iMin <= iMax {
            let leftPartIndex = (iMin + iMax) / 2
            let rightPartIndex = halfLength - leftPartIndex

            if leftPartIndex < iMax && nums2[rightPartIndex-1] > nums1[leftPartIndex] {
                // splitting index is too small
                iMin += 1
            } else if leftPartIndex > iMin && nums1[leftPartIndex-1] > nums2[rightPartIndex] {
                // splitting index is too big
                iMax -= 1
            } else {
                // splitting index is perfect
                var maxLeft = 0

                if leftPartIndex == 0 {
                    maxLeft = nums2[rightPartIndex-1]
                } else if rightPartIndex == 0 {
                    maxLeft = nums1[leftPartIndex-1]
                } else {
                    maxLeft = max(nums1[leftPartIndex-1], nums2[rightPartIndex-1])
                }

                // The total number is odd then return the middlest number
                if (nums1Size + nums2Size) % 2 == 1 {
                    return Double(maxLeft)
                }

                var minRight = 0

                if leftPartIndex == nums1Size {
                    minRight = nums2[rightPartIndex]
                } else if rightPartIndex == nums2Size {
                    minRight = nums1[leftPartIndex]
                } else {
                    minRight = min(nums1[leftPartIndex], nums2[rightPartIndex])
                }

                // The total number is even then return the middlest two numbers
                return Double(maxLeft + minRight) / 2
            }
        }

        return 0.0
    }
}
