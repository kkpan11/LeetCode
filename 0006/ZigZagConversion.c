#include <stdlib.h>
#include <stdbool.h>
#include <string.h>

#define MIN(a,b) (((a)<(b))?(a):(b))

char * convert(char * s, int numRows) {
    if (numRows == 1) { return s; }

    int length = strlen(s);
    int currentRowIndex = 0;
    bool isGoingDown = false;
    char *rows[numRows];
    int initializedRowIndex = -1;
    
    // Create reading character buffer
    char buffer[2];
    buffer[1] = '\0';

    for (int i = 0; i < length; ++i) {
        if (initializedRowIndex != numRows - 1 && initializedRowIndex != currentRowIndex) {
            // Allocate the possible maximum length for every row string
            char *rowString = (char*) malloc(sizeof(char) * length / 2 + 2);
            rowString[0] = '\0';
            rows[currentRowIndex] = rowString;
            initializedRowIndex = currentRowIndex;
        }
        
        // Copy character value into buffer then concatenate to row string
        buffer[0] = *(s+i);
        strcat(rows[currentRowIndex], buffer);

        if (currentRowIndex == 0 || currentRowIndex == numRows - 1) {
            isGoingDown = !isGoingDown;
        }
        currentRowIndex += isGoingDown ? 1 : -1;
    }
    
    // Copy all the row strings into one result string
    char *result = (char*) malloc(sizeof(char) * length + 1);
    result[0] = '\0';
    
    
    for (int i = 0; i < MIN(numRows, length); ++i) {
        strcat(result, rows[i]);
    }

    return result;
}
