#include <string.h>

#define MIN(a,b) (((a)<(b))?(a):(b))

// Transform S into T.
// For example, S = "abba", T  = "^#a#b#b#a#$".
// ^ and $ signs are sentinels appended to each end to avoid bounds checking
char* preProcessString(char* s) {
  char *result;

  int length = strlen(s);
  if (length == 0) {
    result = (char*) malloc(sizeof(char) * 3);
    result = "^$\0";
    return result;
  }

  // 2n+3
  result = (char*) malloc(sizeof(char) * (2*length + 4));
  result[0] = '^';

  for (int i = 0; i < length; i++) {
    result[2*i+1] = '#';
    result[2*i+2] = s[i];
  }

  result[2 * length + 1] = '#';
  result[2 * length + 2] = '$';
  result[2 * length + 3] = '\0';

  return result;
}

char* longestPalindrome(char* s) {
  char *result;
  char *transformedStr = preProcessString(s);
  int length = strlen(transformedStr);
  int *P = (int*) malloc(sizeof(int) * length);
  int C = 0, R = 0;

  for (int i = 1; i < length-1; i++) {
    int i_mirror = 2*C-i; // equals to i' = C - (i - C)

    P[i] = (R > i) ? MIN(R-i, P[i_mirror]) : 0;

    // Attempt to expand palindrome centered at i
    while (transformedStr[i + 1 + P[i]] == transformedStr[i - 1 - P[i]]) {
      P[i]++;
    }

    // If palindrome centered at i expand past R,
    // adjust center based on expanded palindrome.
    if (i + P[i] > R) {
      C = i;
      R = i + P[i];
    }
  }

  // Find the maximum element in P
  int maxLen = 0;
  int centerIndex = 0;
  for (int i = 1; i < length-1; i++) {
    if (P[i] > maxLen) {
      maxLen = P[i];
      centerIndex = i;
    }
  }

  free(P);
  //free(transformedStr); // this will cause runtime error in LeetCode

  result = (char*) malloc(sizeof(char) * (maxLen+1));
  strncpy(result, s + ((centerIndex - 1 - maxLen)/2), maxLen);
  result[maxLen] = '\0';

  return result;
}
