# 5. Longest Palindromic Substring

## Description
Given a string **s**, find the longest palindromic substring in **s**. You may assume that the maximum length of **s** is 1000.

## Example 1:
<pre>
<b>Input</b>: "babad"
<b>Output</b>: "bab"
<b>Note</b>: "aba" is alse a valid answer.

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
- C: [LongestPalindromicSubstring.c](LongestPalindromicSubstring.c)

## Failed Submissions
- C: [LongestPalindromicSubstringFailedDueToTimeLimitExceeded.c](LongestPalindromicSubstringFailedDueToTimeLimitExceeded.c)
