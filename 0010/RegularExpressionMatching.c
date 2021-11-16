#include <stdbool.h>

bool match(char * s, char * p) {
    return (s[0] == p[0]) || (p[0] == '.' && s[0]);
}

/**
 * @brief Recursion Solution 
 */
bool isMatch(char * s, char * p) {
    if (!p[0]) return !s[0];
    if (p[1] == '*') return isMatch(s, p+2) || match(s, p) && isMatch(s+1, p);
    if (p[0] == '.') return s[0] && isMatch(s+1, p+1);
    return match(s, p) && isMatch(s+1, p+1);
}
