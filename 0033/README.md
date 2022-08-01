# 33. Search in Rotated Sorted Array

## Description
There is an integer array `nums` sorted in ascending order (with **distinct** values).

Prior to being passed to your function, `nums` is **possibly rotated** at an unknown pivot index `k` ($1 <= k < nums.length$) such that the resulting array is `[nums[k], nums[k+1], ..., nums[n-1], nums[0], nums[1], ..., nums[k-1]]` **(0-indexed)**. For example, `[0,1,2,4,5,6,7]` might be rotated at pivot index `3` and become `[4,5,6,7,0,1,2]`.

Given the array `nums` **after** the possible rotation and an integer `target`, return *the index of `target` if it is in `nums`, or `-1` if it is not in `nums`.*

You must write an algorithm with $O(\log n)$ runtime complexity.

## Example 1:
<pre>
<b>Input:</b> nums = [4,5,6,7,0,1,2], target = 0
<b>Output:</b> 4
</pre>

## Example 2:
<pre>
<b>Input:</b> nums = [4,5,6,7,0,1,2], target = 3
<b>Output:</b> -1
</pre>

## Example 3:
<pre>
<b>Input:</b> nums = [1], target = 0
<b>Output:</b> -1
</pre>

## Constraints:
- $1 <= nums.length <= 5000$
- $-10^4 <= nums[i] <= 10^4$
- All values of `nums` are **unique**.
- `nums` is an ascending array that is possibly rotated.
- $-10^4 <= target <= 10^4$

---

## Thoughts
1. In a binary search, we check if the current element(element at mid index) is same as target, then we return its index. This step remains same here.
2. Other than that, if they are not same, we check if the **pivot** lies to the right of the current element or to the left. If it lies to the right, then we check if the target lies in non-rotated subarray, if it does we update the high else we update the low. 

3. Similarly, if the **pivot** lies to the left, again we check if the target lies in the non-rotated subarray, we update the low, else we update the high. And in the end, if we come out of the loop, we are sure that the target is not present in the given array.

## Further Thoughts
For those who have difficulties understanding one-pass binary search solution, I tried to divide the problem into two stages:

1. Find the lowest value in array.
2. Find the target in left or right group.

## Languages
- C: [SearchInRotatedSortedArray.c](SearchInRotatedSortedArray.c)
- Swift: [SearchInRotatedSortedArray.swift](SearchInRotatedSortedArray.swift)
- Java: [SearchInRotatedSortedArray.java](SearchInRotatedSortedArray.java)
