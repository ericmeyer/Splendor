import UIKit

public class ChipCollectionDataSource: UIView, UICollectionViewDataSource {

    private var chipCount: Int = 0

    public func set(chipCount: Int) {
        self.chipCount = chipCount
    }

    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChipViewCell", for: indexPath) as! ChipViewCell
        if indexPath.row == 0 {
            cell.backgroundColor = .blue
        } else {
            cell.backgroundColor = .green
        }
        cell.chipCount.text = "\(chipCount)"
        return cell
    }

}
