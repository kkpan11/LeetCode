class Solution {
    func longestPalindrome(_ s: String) -> String {
        /*
         * @brief Dynamic Programming Solution #1
         * 2 Dimensional Array
         * Time complexity: O(n^2)
         * Space complexity: O(n^2)
         */
        let strArray = Array(s)
        var totalLength = strArray.count
        var palindromeMatrix = Array(repeating: Array(repeating: false, count: totalLength), count: totalLength)
        var startIndex = 0, endIndex = 0

        for indexI in 1 ..< totalLength {
            for indexJ in 0 ..< indexI {
                let isSameChar = strArray[indexI] == strArray[indexJ]
                let hasInnerPalindrome = palindromeMatrix[indexJ+1][indexI-1]
                let isOneOrTwoCharsAway = indexI - indexJ <= 2

                if isSameChar && (hasInnerPalindrome || isOneOrTwoCharsAway) {
                    palindromeMatrix[indexJ][indexI] = true

                    if indexI - indexJ > endIndex - startIndex {
                        startIndex = indexJ
                        endIndex = indexI
                    }
                }
            }
        }

        return String(strArray[startIndex ... endIndex])
    }
}
