import Splendor
import Quick
import Nimble

class GameViewControllerSpecs: QuickSpec {

    override func spec() {
        func buildController() -> GameViewController {
            let controller = GameViewController()
            let collectionViewOne = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: UICollectionViewLayout())
            controller.availableChipsView = collectionViewOne

            let collectionViewTwo = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: UICollectionViewLayout())
            controller.playerOneChipsView = collectionViewTwo

            controller.viewDidLoad()

            return controller
        }

        describe("Loading the view") {
            it("sets the data source for the available chips view") {
                let controller = buildController()

                controller.viewDidLoad()

                expect(controller.availableChipsView.dataSource).notTo(beNil())
            }

            it("sets the data source for player one chips view") {
                let controller = buildController()

                controller.viewDidLoad()

                expect(controller.playerOneChipsView.dataSource).notTo(beNil())
                expect(controller.playerOneChipsView.dataSource).notTo(be(
                    controller.availableChipsView.dataSource
                ))
            }
        }
    }

}
