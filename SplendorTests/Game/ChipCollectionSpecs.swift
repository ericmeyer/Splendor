import Splendor
import Quick
import Nimble

class ChipCollectionSpecs: QuickSpec {

    override func spec() {
        describe("Removing a chip") {
            it("removes a blue chip") {
                let collection = ChipCollection(chips: [.blue: 5])

                collection.remove(color: .blue)

                expect(collection.count(of: .blue)).to(equal(4))
            }

            it("does not remove a chip when there are 0 chips") {
                let collection = ChipCollection(chips: [.blue: 0])

                collection.remove(color: .blue)

                expect(collection.count(of: .blue)).to(equal(0))
            }

            it("does not remove a chip that is not present") {
                let collection = ChipCollection(chips: [.blue: 5])

                collection.remove(color: .green)

                expect(collection.count(of: .green)).to(equal(0))
            }
        }

        describe("Adding a chip") {
            it("adds a blue chip") {
                let collection = ChipCollection(chips: [.blue: 5])

                collection.add(color: .blue)

                expect(collection.count(of: .blue)).to(equal(6))
            }

            it("adds a chip that was not present") {
                let collection = ChipCollection(chips: [.blue: 5])

                collection.add(color: .green)

                expect(collection.count(of: .green)).to(equal(1))
            }
        }
    }

}
