class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard strs.count > 0 else { return "" }

        // Container for common prefix. Initialize using the first index of str array
        var commonPrefix = strs[0]

        for str in strs[1..<strs.count] {
            while !str.hasPrefix(commonPrefix) {
                // Drop each last character of 'commonPrefix' until 'str' has a prefix of 'commonPrefix'
                commonPrefix = String(commonPrefix.dropLast())
            }
        }

        return commonPrefix
    }
}