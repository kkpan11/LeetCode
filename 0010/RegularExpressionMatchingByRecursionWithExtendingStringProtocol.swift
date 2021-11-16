extension StringProtocol {
    subscript(_ offset: Int) -> Element {
        return self[index(startIndex, offsetBy: offset)]
    }

    subscript(_ range: Range<Int>) -> SubSequence {
        return prefix(range.lowerBound + range.count).suffix(range.count)
    }

    subscript(_ range: ClosedRange<Int>) -> SubSequence {
        return prefix(range.lowerBound + range.count).suffix(range.count)
    }
}

class Solution {
    func isMatch(_ text: String, _ pattern: String) -> Bool {
        /* 
         * @brief Recursion Solution #2
         * Character accessing by extending `StringProtocol`
         */
        if pattern.isEmpty {
            return text.isEmpty
        }

        let isFirstMatched = !text.isEmpty && (pattern[0] == text[0] || pattern[0] == ".")

        if pattern.count >= 2 && pattern[1] == "*" {
            return isMatch(text, String(pattern[2..<pattern.count]))
                || (isFirstMatched && isMatch(String(text[1..<text.count]), pattern))
        } else {
            return isFirstMatched && isMatch(String(text[1..<text.count]), String(pattern[1..<pattern.count]))
        }
    }
}
