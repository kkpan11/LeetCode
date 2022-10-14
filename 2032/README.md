# 2032. Two Out of Three

## Description
Given three integer arrays `nums1`, `nums2`, and `nums3`, return _a **distinct** array containing all the values that are present in **at least two** out of the three arrays. You may return the values in **any** order._

## Example 1:
<pre>
<b>Input:</b> nums1 = [1,1,3,2], nums2 = [2,3], nums3 = [3]
<b>Output:</b> [3,2]
<b>Explanation:</b> The values that are present in at least two arrays are:
- 3, in all three arrays.
- 2, in nums1 and nums2.
</pre>

## Example 2:
<pre>
<b>Input:</b> nums1 = [3,1], nums2 = [2,3], nums3 = [1,2]
<b>Output:</b> [2,3,1]
<b>Explanation:</b> The values that are present in at least two arrays are:
- 2, in nums2 and nums3.
- 3, in nums1 and nums2.
- 1, in nums1 and nums3.
</pre>

## Example 3:
<pre>
<b>Input:</b> nums1 = [1,2,2], nums2 = [4,3,3], nums3 = [5]
<b>Output:</b> []
<b>Explanation:</b> No value is present in at least two arrays.
</pre>

## Constraints:
- $1 <= nums1.length, nums2.length, nums3.length <= 100$
- $1 <= num1[i], nums2[j], nums3[k] <= 100$

---
## First Thoughts:
1. Iterate all of three arrays to store and check the elements existences in separated hash tables.
2. If found there is an element which is existing in at least two arrays then append the element into the result.


## Final Thoughts:
1. Because the input sources have restrict number & length limitations, so we can just use the fixed-length memery to achieve our approach.
2. The requirements which are present in at least two out of the three arrays, so we can just iterate the three of arrays to count which numbers are appearing at least **2** times of the three arrays.

## Languages:
- C: [TwoOutOfThree.c](TwoOutOfThree.c)
- Java: [TwoOutOfThree.java](TwoOutOfThree.java)
- Swift: [TwoOutOfThree.swift](TwoOutOfThree.swift)

## Failed Submissions
- Swift: [TwoOutOfThreeFailedDueToDuplicateElementInTheArray.swift](TwoOutOfThreeFailedDueToDuplicateElementInTheArray.swift)