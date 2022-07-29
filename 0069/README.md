# 69. Sqrt(x)

## Description
Given a non-negative integer `x`, compute and return _the square root of_ `x`.

Since the return type is integer, the decimal digits are **truncated**, and only **the integer part** of the result is returned.

**Note:** You are not allowed to use any built-in exponent function or operator, such as `pow(x, 0.5)` or `x ** 0.5`.

## Example 1:
<pre>
<b>Input:</b> x = 4
<b>Output:</b> 2
</pre>

## Example 2:
<pre>
<b>Input:</b> x = 8
<b>Output:</b> 2
<b>Explanation:</b> The square root of 8 is 2.82842..., and since the decimal part is truncated, 2 is returned.
</pre>

## Constraints:
- $0 <= x <= 2^{31} - 1$

---

## Thoughts
1. Because the square root of `x` will always be lower than `x`, we can finding the anwser by **binary search** algorithm that has the **lower bound** starting from `0` and the **upper bound** starting from `x`.

## Languages
- C: [SquareRootOfX.c](SquareRootOfX.c)
- Swift: [SquareRootOfX.swift](SquareRootOfX.swift)
- Java: [SquareRootOfX.java](SquareRootOfX.java)
