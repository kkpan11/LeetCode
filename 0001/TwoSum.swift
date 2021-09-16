class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map: [Int: Int] = [:]
        for (index, number) in nums.enumerated() {
            let diff = target - number
            if let hashedIndex = map[diff], hashedIndex != index {
                return [hashedIndex, index]
            }
            map[number] = index
        }
        return []
    }
}