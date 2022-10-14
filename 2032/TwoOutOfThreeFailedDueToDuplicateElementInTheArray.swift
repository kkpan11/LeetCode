class Solution {
    func twoOutOfThree(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int]) -> [Int] {
        var dic1: Dictionary<Int, Bool> = [:]
        var dic2: Dictionary<Int, Bool> = [:]
        var dic1_2: Dictionary<Int, Bool> = [:]
        var result: [Int] = []

        for value in nums1 {
            if dic1[value] == nil {
                dic1[value] = true
            }
        }

        for value in nums2 {
            if dic1[value] != nil {
                result.append(value)
                dic1_2[value] = true
            }

            if dic2[value] == nil {
                dic2[value] = true
            }
        }

        for value in nums3 {
            if (dic1[value] != nil || dic2[value] != nil) && dic1_2[value] == nil {
                result.append(value)
            }
        }

        return result
    }
}
