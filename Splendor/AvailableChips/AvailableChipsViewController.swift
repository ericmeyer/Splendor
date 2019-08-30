import UIKit

public class AvailableChipsViewController: UIViewController {

    @IBOutlet public var availableChipsView: UICollectionView!
    @IBOutlet public var playerOneChipsView: UICollectionView!

    let availableChipsDataSource = AvailableChipsCollectionDataSource()
    let playerOneChipsDataSource = AvailableChipsCollectionDataSource()

    public override func viewDidLoad() {
        super.viewDidLoad()
        availableChipsView.register(UINib(nibName: "AvailableChipViewCell", bundle: nil), forCellWithReuseIdentifier: "AvailableChipViewCell")
        availableChipsDataSource.set(chipCount: 5)
        availableChipsView.dataSource = availableChipsDataSource

        playerOneChipsView.register(UINib(nibName: "AvailableChipViewCell", bundle: nil), forCellWithReuseIdentifier: "AvailableChipViewCell")
        playerOneChipsView.dataSource = playerOneChipsDataSource
    }

}
