/**
 * Note: The returned array must be malloced, assume caller calls free().
 */
int* twoSum(int* nums, int numsSize, int target) {
    int *result = (int*) malloc(sizeof(int)*2);
    int didFound = -1;
    for (int i = 0; i<numsSize; i++) {
        if (didFound == 0) {
            break;
        }

        for (int j = i+1; j<numsSize; j++) {
            if ((nums[i] + nums[j]) == target) {
                result[0] = i;
                result[1] = j;

                didFound = 0;
                break;
            }
        }
    }

    return result;
}
