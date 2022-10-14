class Solution {
    public List<Integer> twoOutOfThree(int[] nums1, int[] nums2, int[] nums3) {
        int[][] countArray = new int[3][101];
        List<Integer> result = new ArrayList<Integer>();

        for (int value : nums1) {
            countArray[0][value] = 1;
        }

        for (int value : nums2) {
            countArray[1][value] = 1;
        }

        for (int value : nums3) {
            countArray[2][value] = 1;
        }

        for (int i = 1; i <= 100; ++i) {
            if (countArray[0][i] + countArray[1][i] + countArray[2][i] > 1) {
                result.add(i);
            }
        }

        return result;
    }
}
