class Solution {
    func reverse(_ x: Int) -> Int {
        var original = x
        var reversed = 0

        while original != 0 {
            let pop = original % 10
            original /= 10
            if reversed > Int32.max / 10 || (reversed == Int32.max / 10 && pop > 7) { return 0 }
            if reversed < Int32.min / 10 || (reversed == Int32.min / 10 && pop < -8) { return 0 }
            reversed = reversed * 10 + pop
        }

        return reversed
    }
}
