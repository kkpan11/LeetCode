# 7. Reverse Integer

## Description
Given a signed 32-bit integer `x`, return `x` *with its digits reversed.* If reversing `x` causes the value to go outside the signed 32-bit integer range <code>[-2<sup>31</sup>, 2<sup>31</sup> - 1]</code>, then return `0`.

**Assume the environment does not allow you to store 64-bit integers (signed or unsigned).**

## Example 1:
<pre>
<b>Input:</b> x = 123
<b>Output:</b> 321
</pre>

## Example 2:
<pre>
<b>Input:</b> x = -123
<b>Output:</b> -321
</pre>

## Example 3:
<pre>
<b>Input:</b> x = 120
<b>Output</b>: 21
</pre>

## Example 4:
<pre>
<b>Input:</b> x = 120
<b>Output:</b> 21
</pre>

## Constraints
- <code>-2<sup>31</sup> <= x <= 2<sup>31</sup> - 1</code>

---

## First Thoughts
1. Convert digit from ones to the highest digit.
2. Check the overflow with reversing the operation, we should get the previous number.
3. Otherwise, there is an overflow.

## Languages
- C: [ReverseInteger.c](ReverseInteger.c)
- Swift: [ReverseInteger.swift](ReverseInteger.swift)

## Failed Submissions
- C: [ReverseIntegerFailedDueToSignedIntegerOverflow.c](ReverseIntegerFailedDueToSignedIntegerOverflow.c)