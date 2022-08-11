bool searchMatrix(int** matrix, int matrixSize, int* matrixColSize, int target) {
    int low = 0, high = matrixSize * (*matrixColSize) - 1;
    while (low <= high) {
        int middle = low + (high - low) / 2;
        if (target == matrix[middle/(*matrixColSize)][middle%(*matrixColSize)]) {
            return true;
        } else if (target > matrix[middle/(*matrixColSize)][middle%(*matrixColSize)]) {
            low = middle + 1;
        } else if (target < matrix[middle/(*matrixColSize)][middle%(*matrixColSize)]) {
            high = middle - 1;
        }
    }

    return false;
}
