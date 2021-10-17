class Solution {
    /**
     * @brief Expand Around Center
     */
    func longestPalindrome(_ s: String) -> String {
        var strArr = Array(s), strLength = strArr.count, start = 0, maxLength = 1, center = 0
        while center < strLength {
            var left = center, right = center
            while right < strLength - 1 && strArr[left] == strArr[right + 1] {
                right += 1
            }
            center = right + 1
            while left > 0 && right < strLength - 1 && strArr[left - 1] == strArr[right + 1] {
                left -= 1
                right += 1
            }
            if maxLength < right - left + 1 {
                maxLength = right - left + 1
                start = left
            }
        }
        return String(s.prefix(start + maxLength).suffix(maxLength))
    }
}
