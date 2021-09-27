class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var longestLength = 0, startIndex = 0
        var charMap: [Character: Int] = [:]

        for (index, char) in s.enumerated() {
            if let foundIndex = charMap[char] {
                startIndex = max(foundIndex + 1, startIndex)
            }
            longestLength = max(longestLength, index - startIndex + 1)
            charMap[char] = index
        }

        return longestLength
    }
}