class Solution {
    func longestPalindrome(_ s: String) -> String {
        /*
         * @brief Dynamic Programming Solution #2
         * 1 Dimensional Array
         * Time complexity: O(n^2)
         * Space complexity: O(n)
         */
        var totalLength = s.count
        var palindromeMatrix = Array(repeating: false, count: totalLength)
        var maxLength = 1
        var startIndex = 0
        let strArray = Array(s)

        for indexJ in 1 ..< totalLength {
            for indexI in 0 ... indexJ {
                if strArray[indexI] != strArray[indexJ] {
                    palindromeMatrix[indexI] = false
                } else {
                    if indexJ - indexI < 3 {
                        palindromeMatrix[indexI] = true
                    } else {
                        palindromeMatrix[indexI] = palindromeMatrix[indexI + 1]
                    }
                }

                if palindromeMatrix[indexI] == true && (indexJ - indexI + 1 > maxLength) {
                    startIndex = indexI
                    maxLength = indexJ - indexI + 1
                }
            }
        }

        return String(strArray[startIndex ..< startIndex+maxLength])
    }
}
