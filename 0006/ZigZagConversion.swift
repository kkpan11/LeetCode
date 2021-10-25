class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 { return s }

        var currentRowIndex = 0
        var isGoingDown = false
        var rows = [String]()
        var initializedRowIndex = -1

        for char in s {
            if initializedRowIndex != numRows - 1 && initializedRowIndex != currentRowIndex {
                var rowString = ""
                rows.append(rowString)
                initializedRowIndex = currentRowIndex
            }
            rows[currentRowIndex] += String(char)

            if currentRowIndex == 0 || currentRowIndex == numRows - 1 {
                isGoingDown = !isGoingDown
            }
            currentRowIndex += isGoingDown ? 1 : -1
        }

        var result = ""

        for str in rows {
            result.append(contentsOf: str)
        }

        return result
    }
}
