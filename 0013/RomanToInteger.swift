class Solution {
    func romanToInt(_ str: String) -> Int {
        let valueMap: [Character: Int] = [
            "I": 1,
            "V": 5,
            "X": 10,
            "L": 50,
            "C": 100,
            "D": 500,
            "M": 1000
        ]

        var decimal = 0, prevCharValue = 0

        for char in str {
            let currCharValue = valueMap[char] ?? 0
            if currCharValue <= prevCharValue {
                decimal += prevCharValue
            } else {
                decimal -= prevCharValue
            }
            prevCharValue = currCharValue
        }
        decimal += prevCharValue

        return decimal
    }
}
