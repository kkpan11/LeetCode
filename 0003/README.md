# 3. Longest Substring Without Repeating Characters

## Description
Given a string, find the length of the **longest substring** without repeating characters.

## Example
Given `"abcabcbb"`, the answer is `"abc"`, which the length is 3.

Given `"bbbbb"`, the answer is `"b"`, with the length of 1.

Given `"pwwkew"`, the answer is `"wke"`, with the length of 3. Node that the answer must be a **substring**, `"pwke"` is a subsequence and not a substring.

## First Thoughts
1. Keep an array reference for the temp char array.
2. Check the new char appearance in the temp char array.
  - If the same: reserve the original char array and create the next new char array for the same finding purpose.
  - If not the same: append the new char to the original array and continue the finding process.
3. Check if the length increased then replace the original char array if there is a new next compared char array.

## Final Thoughts
1. Assume the charset of these test cases is Extended ASCII.
2. Keep the range of the non-repeating characters.
3. Update the longest length value of the non-repeating characters within the iteration of the input characters.

## Languages
- C: [LongestSubstringWithoutRepeatingCharacters.c](LongestSubstringWithoutRepeatingCharacters.c)
