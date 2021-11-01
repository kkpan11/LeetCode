class Solution {
    func myAtoi(_ str: String) -> Int {
        var number = 0
        let sign: Int

        var iterator = str.makeIterator()
        var currentChar = iterator.next()

        // Discard leading whitespaces
        while let char = currentChar, char.isWhitespace { currentChar = iterator.next() }

        // Check sign
        sign = currentChar == "-" ? -1 : 1
        if currentChar == "+" || currentChar == "-" { currentChar = iterator.next() }

        // Convert digits into an integer
        while let digit = currentChar?.wholeNumberValue {
            number = number * 10 + digit
            guard number <= Int32.max else {
                return Int(sign < 0 ? Int32.min : Int32.max)
            }
            currentChar = iterator.next()
        }

        return sign * number
    }
}
