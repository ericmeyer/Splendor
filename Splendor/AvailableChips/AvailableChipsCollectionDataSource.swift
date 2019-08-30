import UIKit

public class AvailableChipsCollectionDataSource: UIView, UICollectionViewDataSource {

    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AvailableChipViewCell", for: indexPath) as! AvailableChipViewCell
        if indexPath.row == 0 {
            cell.backgroundColor = .blue
        } else {
            cell.backgroundColor = .green
        }
        return cell
    }

}
