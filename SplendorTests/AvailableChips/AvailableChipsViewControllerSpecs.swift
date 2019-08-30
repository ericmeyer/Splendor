import Splendor
import Quick
import Nimble

class AvailableChipsViewControllerSpecs: QuickSpec {

    override func spec() {
        func buildController() -> AvailableChipsViewController {
            let controller = AvailableChipsViewController()
            let collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: UICollectionViewLayout())
            controller.availableChipsView = collectionView
            controller.viewDidLoad()

            return controller
        }

        describe("Loading the view") {
            it("sets the data source for the available chips view") {
                let controller = buildController()
                controller.viewDidLoad()

                expect(controller.availableChipsView.dataSource).to(be(controller))
            }
        }

        describe("The available chips") {
            it("has two types of chips") {
                let controller = buildController()

                let actualNumberOfChips = controller.collectionView(
                    controller.availableChipsView,
                    numberOfItemsInSection: 0
                )
                expect(actualNumberOfChips).to(equal(2))
            }

            it("has blue chips") {
                let controller = buildController()

                let cell = controller.collectionView(
                    controller.availableChipsView,
                    cellForItemAt: IndexPath(row: 0, section: 0)
                )

                expect(cell.backgroundColor).to(equal(UIColor.blue))
            }

            it("has green chips") {
                let controller = buildController()

                let cell = controller.collectionView(
                    controller.availableChipsView,
                    cellForItemAt: IndexPath(row: 1, section: 0)
                )

                expect(cell.backgroundColor).to(equal(UIColor.green))
            }

        }
    }

}