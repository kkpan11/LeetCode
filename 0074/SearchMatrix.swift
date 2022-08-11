class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var row = matrix.count
        var column = matrix[0].count
        var low = 0
        var high = row * column - 1
        while low <= high {
            var middle = low + (high - low) / 2
            if target == matrix[middle/column][middle%column] {
                return true
            } else if target > matrix[middle/column][middle%column] {
                low = middle + 1
            } else if target < matrix[middle/column][middle%column] {
                high = middle - 1
            }
        }

        return false
    }
}
