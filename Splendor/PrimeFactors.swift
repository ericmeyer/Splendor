public class PrimeFactors{
    public static func of(number: Int) -> [Int]{
        var result:[Int] = []
        var remainder = number

        if number < 2 {
            return result
        }


        for i in 2...number {
            while isDivisble(a: remainder, b: i) {
                result.append(i)
                remainder = remainder / i
            }
        }

        return result
    }

    private static func isDivisble(a: Int, b: Int) -> Bool {
        return a % b == 0
    }
}
