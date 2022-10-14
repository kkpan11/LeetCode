class Solution {
    func twoOutOfThree(_ nums1: [Int], _ nums2: [Int], _ nums3: [Int]) -> [Int] {
        var countArray: [[Int]] = Array(repeating: Array(repeating: 0, count: 101), count: 3)
        var result: [Int] = []

        for value in nums1 {
            countArray[0][value] = 1
        }

        for value in nums2 {
            countArray[1][value] = 1
        }

        for value in nums3 {
            countArray[2][value] = 1
        }

        for index in 1...100 {
            if countArray[0][index] + countArray[1][index] + countArray[2][index] > 1 {
                result.append(index)
            }
        }

        return result
    }
}
