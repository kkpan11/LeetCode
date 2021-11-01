# 4. Median of Two Sorted Arrays

## Description
There are two sorted arrays **nums1** and **nums2** of size m and n respectively.

Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).

## Example 1:
```
nums1 = [1, 3]
nums2 = [2]

The median is 2.0
```

## Example 2:
```
nums1 = [1, 2]
nums2 = [3, 4]

The median is (2 + 3)/2 = 2.5
```
---

## First Thoughts
1. Dividing a set into two equal length subsets, that one subset is always greater than the other.

2. First let's cut *A* into two parts at a random position *i*. With the same way, cut *B* into two parts at a random position *j*.

   | left_part               | right_part                |
   |:-----------------------:|:-------------------------:|
   | A[0], A[1], ..., A[i-1] | A[i], A[i+1], ..., A[m-1] |
   | B[0], B[1], ..., B[j-1] | B[j], B[j+1], ..., B[n-1] |

3. If we can ensure:
 - len(left_part) = len(right_part)
 - max(left_part) <= min(right_part)
4. Then the **median = (max(left_part) + min(right_part)) / 2**
5. Great explained article you can reference: [https://leetcode.com/articles/median-of-two-sorted-arrays/](https://leetcode.com/articles/median-of-two-sorted-arrays/)

## Languages
- C
  - [MedianOfTwoSortedArrays.c](MedianOfTwoSortedArrays.c)
- Swift
  - [MedianOfTwoSortedArrays.swift](MedianOfTwoSortedArrays.swift)
  - [MedianOfTwoSortedArraysWithAdditionalMergedArraySpace.swift](MedianOfTwoSortedArraysWithAdditionalMergedArraySpace.swift)
  - [MedianOfTwoSortedArraysWithBuiltInSortedFunction.swift](MedianOfTwoSortedArraysWithBuiltInSortedFunction.swift)
