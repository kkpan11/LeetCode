class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        // Special cases:
        // If the last digit of the number is 0, in order to be a palindrome,
        // the first digit of the number also needs to be 0.
        // Only 0 satisfy this property.
        guard
            x >= 0,
            x % 10 != 0 || x == 0
        else { return false }

        var inputCopy = x
        var revertedNumber = 0

        while inputCopy > revertedNumber {
            revertedNumber = revertedNumber * 10 + inputCopy % 10
            inputCopy /= 10
        }

        // When the length is an odd number, we can get rid of the middle digit by revertedNumber / 10
        // For example when the input is 12321, at the end of the while loop we get x = 12, revertedNumber = 123,
        // since the middle digit doesn't matter in palidrome (it will always equal to itself),
        // we can simply get rid of it.
        return inputCopy == revertedNumber || inputCopy == revertedNumber / 10
    }
}
