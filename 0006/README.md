# 6. ZigZag Conversion

## Description
The string `"PAYPALISHIRING"` is written in a zigzag pattern on a given number of rows like this: (you may want to display this pattern in a fixed font for better legibility)

```
P   A   H   N
A P L S I I G
Y   I   R
```

And then read line by line: `"PAHNAPLSIIGYIR"`

Write the code that will take a string and make this conversion given a number of rows:

`string convert(string s, int numRows);`

## Example 1:
<pre>
<b>Input:</b> s = "PAYPALISHIRING", numRows = 3
<b>Output:</b> "PAHNAPLSIIGYIR"
</pre>

## Example 2:
<pre>
<b>Input:</b> s = "PAYPALISHIRING", numRows = 4
<b>Output:</b> "PINALSIGYAHRPI"
<b>Explanation:</b>
P     I    N
A   L S  I G
Y A   H R
P     I
</pre>

## Example 3:
<pre>
<b>Input:</b> s = "A", numRows = 1
<b>Output:</b> "A"
</pre>

## Constraints:
- `1 <= s.length <= 1000`
- `s` consists of English letters (lower-case and upper-case), `','` and `'.'`.
- `1 <= numRows <= 1000`

---

## First Thoughts
1. Convert digit from ones to the highest digit.
2. Check the overflow with reversing the operation, we should get the previous number.
3. Otherwise, there is an overflow.

## Languages
- C: [ZigZagConversion.c](ZigZagConversion.c)
- Swift: [ZigZagConversion.swift](ZigZagConversion.swift)

## Failed Submissions
