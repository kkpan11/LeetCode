# 7. Reverse Integer

## Description
Given a 32-bit signed integer, reverse digits of an integer.

## Example 1:
<pre>
<b>Input</b>: 123
<b>Output</b>: 321
</pre>

## Example 2:
<pre>
<b>Input</b>: -123
<b>Output</b>: -321
</pre>

## Example 3:
<pre>
<b>Input</b>: 120
<b>Output</b>: 21
</pre>

## Note:
Assume we are dealing with an environment which cloud only store integers within the 32-bit signed integer range:
<img src="http://www.sciweavers.org/tex2img.php?eq=%5B-2%5E%7B31%7D%2C%202%5E%7B31%7D%20-%201%5D.&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=0" align="center" border="0" alt="[-2^{31}, 2^{31} - 1]." width="135" height="21" /> For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.

## First Thoughts
1. Convert digit from ones to the highest digit.
2. Check the overflow with reversing the operation, we should get the previoud number.
3. Otherwise, there is an overflow.

## Languages
- C: [ReverseInteger.c](ReverseInteger.c)
