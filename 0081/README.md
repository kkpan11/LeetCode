# 81. Search in Rotated Sorted Array II

## Description
There is an integer array `nums` sorted in non-decreasing order (not necessariry with **distinct** values).

Before being passed to your function, `nums` is **rotated** at an unknown pivot index `k` ($0 <= k < nums.length$) such that the resulting array is $[nums[k], nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]]$ (**0-indexed**). For example, $[0,1,2,4,4,4,5,6,6,7]$ might be rotated at pivot index `5` and become $[4,5,6,6,7,0,1,2,4,4]$.

Given the array `nums` **after** the rotation and an integer `target`, return `true` if `target` is in `nums`, or `false` if it is not in `nums`.

You must decrease the overall operation steps as much as possible.

## Example 1:
<pre>
<b>Input:</b> nums = [2,5,6,0,0,1,2], target = 0
<b>Output:</b> true
</pre>

## Example 2:
<pre>
<b>Input:</b> nums = [2,5,6,0,0,1,2], target = 3
<b>Output:</b> false
</pre>

## Constraints:
- $1 <= nums.length <= 5000$
- $-10^4 <= nums[i] <= 10^4$
- `nums` is guaranteed to rotated at some pivot.
- $-10^4 <= target <= 10^4$

## Follow up:
This problem is similar to [Search in Rotated Sorted Array](https://leetcode.com/problems/search-in-rotated-sorted-array/description/), but `nums` may contain **duplicates**. Would this affect the runtime complexity? How and why?

---

## Thoughts:
1. According to [Search in Rotated Sorted Array](https://leetcode.com/problems/search-in-rotated-sorted-array/) problem, the only difference is there might be duplicates elements in the array.
2. Because the other conditions are all the same.
   - Non-decreasing order
   - Might be rotated in a linear array
3. Consider to skip the duplicates then the remaining work will be the same as the [Search in Rotated Sorted Array](https://leetcode.com/problems/search-in-rotated-sorted-array/) problem.

## Languages:
- C: [SearchInRotatedSortedArrayII.c](SearchInRotatedSortedArrayII.c)
- Java: [SearchInRotatedSortedArrayII.java](SearchInRotatedSortedArrayII.java)
- Swift: [SearchInRotatedSortedArrayII.swift](SearchInRotatedSortedArrayII.swift)