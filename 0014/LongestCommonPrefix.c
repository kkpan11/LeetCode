char * longestCommonPrefix(char ** strs, int strsSize) {
    for(int c=0;; ++c) {

        // the longest common prefix is the first string
		if (strs[0][c] == '\0') {
            return strs[0];
        }
        
		for(int s=1; s<strsSize; ++s) {
            // compare all strings character to the first one
			if (strs[s][c] != strs[0][c])  {
                // replace the current character with '\0'
				strs[0][c] = '\0';
                return strs[0];
			}
		}
	}
}