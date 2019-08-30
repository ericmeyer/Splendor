import Splendor
import Quick
import Nimble

class AvailableChipsCollectionDataSourceSpecs: QuickSpec {

    override func spec() {
        func buildCollectionView() -> UICollectionView {
            let collectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: UICollectionViewLayout())
            collectionView.register(UINib(nibName: "AvailableChipViewCell", bundle: nil), forCellWithReuseIdentifier: "AvailableChipViewCell")
            return collectionView
        }

        describe("The available chips") {
            it("has two types of chips") {
                let dataSource = AvailableChipsCollectionDataSource()

                let actualNumberOfChips = dataSource.collectionView(
                    buildCollectionView(),
                    numberOfItemsInSection: 0
                )
                expect(actualNumberOfChips).to(equal(2))
            }

            it("has blue chips") {
                let dataSource = AvailableChipsCollectionDataSource()

                let cell = dataSource.collectionView(
                    buildCollectionView(),
                    cellForItemAt: IndexPath(row: 0, section: 0)
                )

                expect(cell.backgroundColor).to(equal(UIColor.blue))
            }

            it("has green chips") {
                let dataSource = AvailableChipsCollectionDataSource()

                let cell = dataSource.collectionView(
                    buildCollectionView(),
                    cellForItemAt: IndexPath(row: 1, section: 0)
                )

                expect(cell.backgroundColor).to(equal(UIColor.green))
            }

            it("displays the given number of available chips") {
                let dataSource = AvailableChipsCollectionDataSource()
                dataSource.set(chipCount: 3)

                let cell = dataSource.collectionView(
                    buildCollectionView(),
                    cellForItemAt: IndexPath(row: 1, section: 0)
                ) as? AvailableChipViewCell

                expect(cell?.chipCount.text).to(equal("3"))
            }

            it("defaults the number of available chips to 0") {
                let dataSource = AvailableChipsCollectionDataSource()

                let cell = dataSource.collectionView(
                    buildCollectionView(),
                    cellForItemAt: IndexPath(row: 1, section: 0)
                    ) as? AvailableChipViewCell

                expect(cell?.chipCount.text).to(equal("0"))
            }
        }
    }

}
