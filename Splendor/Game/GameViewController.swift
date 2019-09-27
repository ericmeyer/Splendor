import UIKit

public class GameViewController: UIViewController {

    @IBOutlet public var availableChipsView: UICollectionView!
    @IBOutlet public var playerOneChipsView: UICollectionView!

    let availableChipsDataSource = ChipCollectionDataSource()
    let playerOneChipsDataSource = ChipCollectionDataSource()

    public override func viewDidLoad() {
        super.viewDidLoad()
        availableChipsView.register(UINib(nibName: "ChipViewCell", bundle: nil), forCellWithReuseIdentifier: "ChipViewCell")
        availableChipsDataSource.set(chipCount: 5)
        availableChipsView.dataSource = availableChipsDataSource

        playerOneChipsView.register(UINib(nibName: "ChipViewCell", bundle: nil), forCellWithReuseIdentifier: "ChipViewCell")
        playerOneChipsDataSource.set(chipCount: 0)
        playerOneChipsView.dataSource = playerOneChipsDataSource
    }

}
