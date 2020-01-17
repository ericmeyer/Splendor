import UIKit

public class GameViewController: UIViewController, UICollectionViewDelegate, GameView {

    @IBOutlet public var availableChipsView: UICollectionView!
    @IBOutlet public var playerOneChipsView: UICollectionView!
    @IBOutlet var gemCardView: GemCardView!

    let availableChipsDataSource = ChipCollectionDataSource()
    let playerOneChipsDataSource = ChipCollectionDataSource()
    var presenter: GamePresenter?
    var game: Game?

    public override func viewDidLoad() {
        super.viewDidLoad()
        presenter = GamePresenter(view: self)
        presenter?.startGame()

        gemCardView.set(card: GemCard(blueCost: 2, greenCost: 1, redCost: 4))
    }

    func gameWasStarted(game: Game) {
        self.game = game

        availableChipsView.accessibilityIdentifier = AccessibilityIdentifiers.ChipCollections.bank.rawValue
        availableChipsView.register(UINib(nibName: "ChipViewCell", bundle: nil), forCellWithReuseIdentifier: "ChipViewCell")
        availableChipsDataSource.set(chipCollection: game.bankChipCollection)
        availableChipsView.dataSource = availableChipsDataSource

        playerOneChipsView.accessibilityIdentifier = AccessibilityIdentifiers.ChipCollections.playerOne.rawValue
        playerOneChipsView.register(UINib(nibName: "ChipViewCell", bundle: nil), forCellWithReuseIdentifier: "ChipViewCell")
        playerOneChipsDataSource.set(chipCollection: game.playerChipCollection)
        playerOneChipsView.dataSource = playerOneChipsDataSource

        availableChipsView.delegate = self
        playerOneChipsView.delegate = self
    }

    func chipCountsChanged() {
        availableChipsView.reloadData()
        playerOneChipsView.reloadData()
    }

    public func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let color: ChipColor = indexPath.row == 0 ? .blue : .green
        if collectionView == playerOneChipsView {
            presenter?.takeChip(color: color)
        } else if collectionView == availableChipsView {
            presenter?.giveChip(color: color)
        }
    }
}
