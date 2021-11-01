# 2. Add Two Numbers

## Description
You are given two **non-empty** linked lists representing two non-negative integers. The digits are stored in **reverse order** and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

## Example 1:
<pre>
<b>Input:</b> (2 -> 4 -> 3) + (5 -> 6 -> 4)
<b>Output:</b> 7 -> 0 -> 8
<b>Explanation:</b> 342 + 465 = 807.
</pre>

## Example 2:
<pre>
<b>Input:</b> l1 = [0], l2 = [0]
<b>Output:</b> [0]
</pre>

## Example 3:
<pre>
<b>Input:</b> l1 = [9,9,9,9,9,9,9], l2 = [9,9,9,9]
<b>Output:</b> [8,9,9,9,0,0,0,1]
</pre>

## Constraints:
- The number of nodes in each linked list is in the range ```[1, 100]```.
- ```0 <= Node.val <= 9```
- It is guaranteed that the list represents a number that does not have leading zeros.

---

## Languages
- C: [AddTwoNumbers.c](AddTwoNumbers.c)
- Swift: [AddTwoNumbers.swift](AddTwoNumbers.swift)

## Failed Submissions
- C: [AddTwoNumbersFailedDueToArithmeticOverflow.c](AddTwoNumbersFailedDueToArithmeticOverflow.c)
