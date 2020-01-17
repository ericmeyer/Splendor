public class ChipCollection {

    public typealias ChipCount = Int
    private var chips: [ChipColor: ChipCount]

    public init(chips: [ChipColor: ChipCount]) {
        self.chips = chips
    }

    public func count(of color: ChipColor) -> ChipCount {
        if let count = chips[color] {
            return count
        } else {
            return 0
        }
    }

    public func remove(color: ChipColor) {
        let chipCount = count(of: color)
        if chipCount > 0 {
            chips[color] = chipCount - 1
        }
    }

    public func add(color: ChipColor) {
        chips[color] = count(of: color) + 1
    }

}
