class Solution {
    func isMatch(_ text: String, _ pattern: String) -> Bool {
        /* 
         * @brief Dynamic Programming Solution
         * Default character accessing by `String.Index`
         */
        let textArray = Array(text)
        let patternArray = Array(pattern)
        let textCount = text.count
        let patternCount = pattern.count
        var dpTable = Array(repeating: Array(repeating: false, count: pattern.count + 1), count: text.count + 1)

        dpTable[0][0] = true // Represents `empty` strings for both of the input text & pattern

        for index in 0..<patternCount {
            if patternArray[index] == "*" && dpTable[0][index-1] {
                dpTable[0][index+1] = true
            }
        }

        for textIndex in 0..<textCount {
            for patternIndex in 0..<patternCount {
                if patternArray[patternIndex] == textArray[textIndex] {
                    dpTable[textIndex+1][patternIndex+1] = dpTable[textIndex][patternIndex]
                } else if patternArray[patternIndex] == "." {
                    dpTable[textIndex+1][patternIndex+1] = dpTable[textIndex][patternIndex]
                } else if patternArray[patternIndex] == "*" {
                    if patternArray[patternIndex-1] != textArray[textIndex] && patternArray[patternIndex-1] != "." {
                        dpTable[textIndex+1][patternIndex+1] = dpTable[textIndex+1][patternIndex-1]
                    } else {
                        dpTable[textIndex+1][patternIndex+1] = (
                            dpTable[textIndex+1][patternIndex] ||
                            dpTable[textIndex][patternIndex+1] ||
                            dpTable[textIndex+1][patternIndex-1]
                            )
                    }
                }
            }
        }
        return dpTable[textCount][patternCount]
    }
}
