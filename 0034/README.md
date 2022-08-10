# 34. Find First and Last Position of Element in Sorted Array

## Description
Given an array of integers `nums` sorted in non-decreasing order, find the starting and ending position of a given `target` value.

If `target` is not found in the array, return `[-1, -1]`.

You must wraite an algorithm with $O(\log n)$ runtime complexity.

## Example 1:
<pre>
<b>Input:</b> nums = [5,7,7,8,8,10], target = 8
<b>Output:</b> [3,4]
</pre>

## Example 2:
<pre>
<b>Input:</b> nums = [5,7,7,8,8,10], target = 6
<b>Output:</b> [-1,-1]
</pre>

## Example 3:
<pre>
<b>Input:</b> nums = [], target = 0
<b>Output:</b> [-1,-1]
</pre>

## Constraints
- $0 <= nums.length <= 10^5$
- $-10^9 <= nums[i] <= 10^9$
- `nums` is a non-decreasing array.
- $-10^9 <= target <= 10^9$

----

## Thoughts
1. Because the input source is a sorted array in non-decreasing order, so we can solve that by the binary search algorithm with $O(\log n)$ time complexity.
2. Because there might be duplicate targets, so we need to check the **leftmost** and **rightmost** possibilities.
3. First binary search finds out the **first** target index and second binary search finds out the **last** target index.
4. So there are just 2 binary searches which takes about $O(2 * \log n)$ steps. The time complexity will still be $O(\log n)$.


## Languages
- C: [FindFirstAndLastPositionOfElementInSortedArray.c](FindFirstAndLastPositionOfElementInSortedArray.c)
- Swift: [FindFirstAndLastPositionOfElementInSortedArray.swift](FindFirstAndLastPositionOfElementInSortedArray.swift)
- Java: [FindFirstAndLastPositionOfElementInSortedArray.java](FindFirstAndLastPositionOfElementInSortedArray.java)
