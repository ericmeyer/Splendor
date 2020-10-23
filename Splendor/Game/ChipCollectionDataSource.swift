import UIKit

public class ChipCollectionDataSource: UIView, UICollectionViewDataSource {

    private var chipCollection: ChipCollection?

    public func set(chipCollection: ChipCollection) {
        self.chipCollection = chipCollection
    }

    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChipViewCell", for: indexPath) as! ChipViewCell
        if indexPath.row == 0 {
            configure(cell: cell, GemColor: .blue)
        } else if indexPath.row == 1 {
            configure(cell: cell, GemColor: .green)
        } else {
            configure(cell: cell, GemColor: .red)
        }
        return cell
    }

    func configure(cell: ChipViewCell, GemColor: GemColor) {
        if let chipCollection = chipCollection {
            cell.chipCount.text = "\(chipCollection.count(of: GemColor))"
        } else {
            cell.chipCount.text = "0"
        }
        switch GemColor {
        case .blue:
            cell.backgroundColor = .blue
            cell.chipCount.accessibilityIdentifier = AccessibilityIdentifiers.ChipColors.blue.rawValue
        case .green:
            cell.backgroundColor = .green
            cell.chipCount.accessibilityIdentifier = AccessibilityIdentifiers.ChipColors.green.rawValue
        case .red:
            cell.backgroundColor = .red
            cell.chipCount.accessibilityIdentifier = AccessibilityIdentifiers.ChipColors.red.rawValue
        }
    }
}
