int reverse(int x) {
    int result = 0;

    while (x != 0) {
        int temp = result;
        result = (result * 10) + (x % 10);
        if ((result - (x % 10)) / 10 != temp) {
            return 0;
        }
        x /= 10;
    }
    return result;
}
