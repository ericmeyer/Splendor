class ChipCollection {

    typealias ChipCount = Int
    private var chips: [ChipColor: ChipCount]

    init(chips: [ChipColor: ChipCount]) {
        self.chips = chips
    }

    func count(of color: ChipColor) -> ChipCount {
        if let count = chips[color] {
            return count
        } else {
            return 0
        }
    }

}
