class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
       let length = nums1.count + nums2.count
        let mergedNums = mergedArrays(nums1, nums2)
        if length % 2 == 0 {
            let middleLeftIndex = max(0, (length / 2) - 1)
            let middleRightIndex = length / 2
            return Double(mergedNums[middleLeftIndex] + mergedNums[middleRightIndex]) / 2.0
        } else {
            let middleIndex = length / 2
            return Double(mergedNums[middleIndex])
        }
    }

    func mergedArrays(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var nums1Index = 0, nums2Index = 0
        var mergedNums = [Int]()

        while nums1Index < nums1.count && nums2Index < nums2.count {
            if nums1[nums1Index] < nums2[nums2Index] {
                mergedNums.append(nums1[nums1Index])
                nums1Index += 1
            } else {
                mergedNums.append(nums2[nums2Index])
                nums2Index += 1
            }
        }

        while nums1Index < nums1.count {
            mergedNums.append(nums1[nums1Index])
            nums1Index += 1
        }

        while nums2Index < nums2.count {
            mergedNums.append(nums2[nums2Index])
            nums2Index += 1
        }

        return mergedNums
    }
}
