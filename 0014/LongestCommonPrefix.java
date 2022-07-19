class Solution {
    public String longestCommonPrefix(String[] strs) {
        if (strs.length == 0) return "";

        // Container for common prefix. Initialize using the first index of str array
        String commonPrefix = strs[0];

        for (int i = 1; i < strs.length; i++) {
            while (strs[i].indexOf(commonPrefix) != 0) {
                // Drop each last character of 'commonPrefix' until 'str' has a prefix of 'commonPrefix'
                commonPrefix = commonPrefix.substring(0, commonPrefix.length() - 1);
            }
        }

        return commonPrefix;
    }
}