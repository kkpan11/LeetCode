# 35. Search Insert Position

## Description
Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You must write an algorithm with $O(\log n)$ runtime complexity.

## Example 1:
<pre>
<b>Input:</b> nums = [1,3,5,6], target = 5
<b>Output:</b> 2
</pre>

## Example 2:
<pre>
<b>Input:</b> nums = [1,3,5,6], target = 2
<b>Output:</b> 1
</pre>

## Example 3:
<pre>
<b>Input:</b> nums = [1,3,5,6], target = 7
<b>Output:</b> 4
</pre>

## Constraints:
- $1 <= nums.length <= 10^4$
- $-10^4 <= nums[i] <= 10^4$
- `nums` contains __distinct__ values sorted in __ascending__ order.
- $-10^4 <= target <= 10^4$

---

## Thoughts
1. Because the input source is a sorted array of distinct integers, so we can solve that by the binary search algorithm with $O(\log n)$ time complexity.


## Languages
- C: [SearchInsertPosition.c](SearchInsertPosition.c)
- Swift: [SearchInsertPosition.swift](SearchInsertPosition.swift)
- Java: [SearchInsertPosition.java](SearchInsertPosition.java)
