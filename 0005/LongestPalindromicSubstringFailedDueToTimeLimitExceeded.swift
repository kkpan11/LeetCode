class Solution {
    /**
     * Brute Force
     */
    func longestPalindrome(_ s: String) -> String {
        // Get length of input string
        let strArray = Array(s)
        let strLength = strArray.count

        // All substrings of length 1 are palindromic
        var maxLength = 1, startIndex = 0

        // Nested loop to mark start and end index
        for right in 0 ..< strLength {
            for left in right ..< strLength {
                var isFound = true

                // Check palindrome
                for offset in 0 ..< (left - right + 1) / 2 where strArray[right + offset] != strArray[left - offset] {
                    isFound = false
                }

                // Palindrome
                if isFound && (leftIndex - rightIndex + 1) > maxLength {
                    startIndex = rightIndex
                    maxLength = leftIndex - rightIndex + 1
                }
            }
        }

        return String(s.prefix(startIndex + maxLength).suffix(maxLength))
    }
}
