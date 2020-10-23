public class ChipCollection {

    public typealias ChipCount = Int
    private var chips: [GemColor: ChipCount]
    private let maxChips = 5

    public init(chips: [GemColor: ChipCount]) {
        self.chips = chips
    }

    public func count(of color: GemColor) -> ChipCount {
        if let count = chips[color] {
            return count
        } else {
            return 0
        }
    }

    public func remove(color: GemColor) {
        let chipCount = count(of: color)
        if chipCount > 0 {
            chips[color] = chipCount - 1
        }
    }

    public func add(color: GemColor) {
        let chipCount = count(of: color)
        if chipCount < maxChips {
            chips[color] = count(of: color) + 1
        }
    }
}
