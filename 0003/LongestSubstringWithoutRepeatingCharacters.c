int lengthOfLongestSubstring(char* s) {
    int index[256] = {0};
    int first_index = -1;
    int length = strlen(s);
    int result = 0;

    for(int i = 0; i < length; ++i){
        first_index = index[s[i]] > first_index ? index[s[i]] : first_index;
        index[s[i]] = i + 1;
        result = (i - first_index + 1) > result ? (i - first_index + 1) : result;
    }

    return result;
}
