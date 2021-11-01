#include <ctype.h>
#include <limits.h>

int myAtoi(char * s) {
    long int number = 0;

    // Discard leading whitespaces
    while (isspace(*s)) ++s;

    // Check sign
    int sign = 1;
    if (*s == '-' || *s == '+') {
        sign = (*s == '-') ? -1 : 1;
        ++s;
    }

    // Convert digits into an integer
    while (isdigit(*s)) {
        int digit = *s - '0';
        number = number * 10 + digit;
        if (number > INT_MAX) {
            return (sign < 0) ? INT_MIN : INT_MAX;
        }
        ++s;
    }

    return sign * number;
}
