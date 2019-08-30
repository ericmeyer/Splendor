import UIKit

public class AvailableChipsViewController: UIViewController {

    @IBOutlet public var availableChipsView: UICollectionView!
    @IBOutlet public var playerOneChipsView: UICollectionView!

    let availableChipsDataSource = AvailableChipsCollectionDataSource()

    public override func viewDidLoad() {
        super.viewDidLoad()
        availableChipsView.register(UINib(nibName: "AvailableChipViewCell", bundle: nil), forCellWithReuseIdentifier: "AvailableChipViewCell")
        availableChipsView.dataSource = availableChipsDataSource
    }

}
