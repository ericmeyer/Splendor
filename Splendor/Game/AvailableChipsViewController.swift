import UIKit

public class AvailableChipsViewController: UIViewController, UICollectionViewDataSource {

    @IBOutlet public var availableChipsView: UICollectionView!

    public override func viewDidLoad() {
        super.viewDidLoad()
        availableChipsView.dataSource = self
    }

    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }

    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AvailableChipCell", for: indexPath)
        if indexPath.row == 0 {
            cell.backgroundColor = .blue
        } else {
            cell.backgroundColor = .green
        }
        return cell
    }

}
