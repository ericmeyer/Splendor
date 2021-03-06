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
            configure(cell: cell, chipColor: .blue)
        } else if indexPath.row == 1 {
            configure(cell: cell, chipColor: .green)
        } else {
            configure(cell: cell, chipColor: .red)
        }
        return cell
    }

    func configure(cell: ChipViewCell, chipColor: ChipColor) {
        if let chipCollection = chipCollection {
            cell.chipCount.text = "\(chipCollection.count(of: chipColor))"
        } else {
            cell.chipCount.text = "0"
        }
        switch chipColor {
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
