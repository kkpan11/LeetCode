# 5. Longest Palindromic Substring

## Description
Given a string **s**, find the longest palindromic substring in **s**. You may assume that the maximum length of **s** is 1000.

## Example 1:
<pre>
<b>Input</b>: "babad"
<b>Output</b>: "bab"
<b>Note</b>: "aba" is also a valid answer.

</pre>

## Example 2:
<pre>
<b>Input</b>: "cbbd"
<b>Output</b>: "bb"

</pre>

## First Thoughts
1. Great explained article you can reference: [https://leetcode.com/problems/longest-palindromic-substring/solution/](https://leetcode.com/problems/longest-palindromic-substring/solution/)
2. Manacher's Algorithm is a non-trivial algorithm which reduces the run time to O(N) and the space to O(N) as well:
[https://articles.leetcode.com/longest-palindromic-substring-part-ii/](https://articles.leetcode.com/longest-palindromic-substring-part-ii/)

## Languages
- C
  - Manacher's Algorithm:
  [LongestPalindromicSubstring.c](LongestPalindromicSubstring.c)
  - Expand Around Center:
  [LongestPalindromicSubstringByExpandAroundCenter.c](LongestPalindromicSubstringByExpandAroundCenter.c)
- Swift
  - Expand Around Center:
  [LongestPalindromicSubstring.swift](LongestPalindromicSubstring.swift)
  - Dynamic Programming (2-Dimentional Table):
  [LongestPalindromicSubstringByDynamicProgrammingTwoDimensionalArray.swift](LongestPalindromicSubstringByDynamicProgrammingTwoDimensionalArray.swift)
  - Dynamic Programming (1-Dimentional Table):
  [LongestPalindromicSubstringByDynamicProgrammingOneDimensionalArray.swift](LongestPalindromicSubstringByDynamicProgrammingOneDimensionalArray.swift)
  

## Failed Submissions
- Swift
  - Brute Force:
  [LongestPalindromicSubstringFailedDueToTimeLimitExceeded.swift](LongestPalindromicSubstringFailedDueToTimeLimitExceeded.swift)
