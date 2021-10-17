class Solution {
    /**
     * Brute Force
     */
    public String longestPalindrome(String s) {
        // Get length of input string
        int n = s.length();
        
        // All substrings of length 1 are palindromic
        int maxLength = 1, start = 0;
        
        // Nested loop to mark start and end index
        for (int i = 0; i < n; i++) {
            for (int j = i; j < n; j++) {
                boolean isFound = true;
                
                // Check paliindrome
                for (int k = 0; k < (j - i + 1) / 2; k++) {
                    if (s.charAt(i + k) != s.charAt(j - k)) {
                        isFound = false;
                    }
                }
                
                // Palindrome
                if (isFound && (j - i + 1) > maxLength) {
                    start = i;
                    maxLength = j - i + 1;
                }
            }
        }
        
        return s.substring(start, start + maxLength);
    }
}
