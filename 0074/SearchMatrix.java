class Solution {
    public boolean searchMatrix(int[][] matrix, int target) {
        int row = matrix.length;
        int column = matrix[0].length;
        int low = 0;
        var high = row * column - 1;
        while (low <= high) {
            int middle = low + (high - low) / 2;
            if (target == matrix[middle/column][middle%column]) {
                return true;
            } else if (target > matrix[middle/column][middle%column]) {
                low = middle + 1;
            } else if (target < matrix[middle/column][middle%column]) {
                high = middle - 1;
            }
        }

        return false;
    }
}
