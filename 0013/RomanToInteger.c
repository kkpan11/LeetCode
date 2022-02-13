int valueOfNumeral(char numeral) {
    switch(numeral) {
        case 'I': return 1;
        case 'V': return 5;
        case 'X': return 10;
        case 'L': return 50;
        case 'C': return 100;
        case 'D': return 500;
        case 'M': return 1000;
    }
    return 0;
}

int romanToInt(char * s) {
    int decimal = 0;
    int i = 0;

    while(s[i] != '\0') {
        /* check if current numeral is smaller than the next */
        if (valueOfNumeral(s[i]) < valueOfNumeral(s[i + 1])) {
            decimal -= valueOfNumeral(s[i]);
        }
        else {
            decimal += valueOfNumeral(s[i]);
        }
        i++;
    }
    return decimal;
}
