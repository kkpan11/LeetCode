class Solution {
    func isMatch(_ text: String, _ pattern: String) -> Bool {
        /* 
         * @brief Recursion Solution #1
         * Default character accessing by `String.Index`
         */
        if pattern.isEmpty {
            return text.isEmpty
        }

        let patternStartIndex = pattern.startIndex
        let patternSecondIndex = pattern.index(patternStartIndex, offsetBy: 1)
        let textStartIndex = text.startIndex

        let isFirstMatched = !text.isEmpty &&
        (pattern[patternStartIndex] == text[textStartIndex] || pattern[patternStartIndex] == ".")

        if pattern.count >= 2 && pattern[patternSecondIndex] == "*" {
            return isMatch(text, String(pattern.dropFirst(2))) ||
            isFirstMatched && isMatch(String(text.dropFirst(1)), pattern)
        } else {
            return isFirstMatched && isMatch(String(text.dropFirst(1)), String(pattern.dropFirst(1)))
        }
    }
}
