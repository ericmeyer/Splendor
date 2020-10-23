import Quick
import Nimble

class SplendorUITests: QuickSpec {

    override func spec() {
        describe("The chip collections") {
            it("starts with 5 chips in the bank") {
                let gameView = GameView.launch()

                expect(gameView.chipCount(collection: .bank, color: .blue)).to(equal(5))
                expect(gameView.chipCount(collection: .bank, color: .green)).to(equal(5))
                expect(gameView.chipCount(collection: .bank, color: .red)).to(equal(5))
                expect(gameView.chipCount(collection: .playerOne, color: .blue)).to(equal(0))
                expect(gameView.chipCount(collection: .playerOne, color: .green)).to(equal(0))
                expect(gameView.chipCount(collection: .playerOne, color: .red)).to(equal(0))
            }

            it("takes and puts chips back") {
                let gameView = GameView.launch()

                expect(gameView.chipCount(collection: .bank, color: .blue)).to(equal(5))
                expect(gameView.chipCount(collection: .bank, color: .green)).to(equal(5))
                expect(gameView.chipCount(collection: .bank, color: .red)).to(equal(5))
                expect(gameView.chipCount(collection: .playerOne, color: .blue)).to(equal(0))
                expect(gameView.chipCount(collection: .playerOne, color: .green)).to(equal(0))
                expect(gameView.chipCount(collection: .playerOne, color: .red)).to(equal(0))

                gameView.tap(collection: .playerOne, color: .blue)
                gameView.tap(collection: .playerOne, color: .green)

                expect(gameView.chipCount(collection: .bank, color: .blue)).to(equal(4))
                expect(gameView.chipCount(collection: .bank, color: .green)).to(equal(4))
                expect(gameView.chipCount(collection: .bank, color: .red)).to(equal(5))
                expect(gameView.chipCount(collection: .playerOne, color: .blue)).to(equal(1))
                expect(gameView.chipCount(collection: .playerOne, color: .green)).to(equal(1))
                expect(gameView.chipCount(collection: .playerOne, color: .red)).to(equal(0))

                gameView.tap(collection: .bank, color: .blue)
                gameView.tap(collection: .bank, color: .green)
                gameView.tap(collection: .bank, color: .red)

                expect(gameView.chipCount(collection: .bank, color: .blue)).to(equal(5))
                expect(gameView.chipCount(collection: .bank, color: .green)).to(equal(5))
                expect(gameView.chipCount(collection: .bank, color: .red)).to(equal(5))
                expect(gameView.chipCount(collection: .playerOne, color: .blue)).to(equal(0))
                expect(gameView.chipCount(collection: .playerOne, color: .green)).to(equal(0))
                expect(gameView.chipCount(collection: .playerOne, color: .red)).to(equal(0))

                gameView.tap(collection: .playerOne, color: .red)

                expect(gameView.chipCount(collection: .bank, color: .blue)).to(equal(5))
                expect(gameView.chipCount(collection: .bank, color: .green)).to(equal(5))
                expect(gameView.chipCount(collection: .bank, color: .red)).to(equal(4))
                expect(gameView.chipCount(collection: .playerOne, color: .blue)).to(equal(0))
                expect(gameView.chipCount(collection: .playerOne, color: .green)).to(equal(0))
                expect(gameView.chipCount(collection: .playerOne, color: .red)).to(equal(1))
            }

            it("enforces a max chip count") {
                let gameView = GameView.launch()

                expect(gameView.chipCount(collection: .bank, color: .blue)).to(equal(5))
                expect(gameView.chipCount(collection: .playerOne, color: .blue)).to(equal(0))

                gameView.tap(collection: .playerOne, color: .blue)
                gameView.tap(collection: .playerOne, color: .blue)
                gameView.tap(collection: .playerOne, color: .blue)
                gameView.tap(collection: .playerOne, color: .blue)
                gameView.tap(collection: .playerOne, color: .blue)
                gameView.tap(collection: .playerOne, color: .blue)

                expect(gameView.chipCount(collection: .bank, color: .blue)).to(equal(0))
                expect(gameView.chipCount(collection: .playerOne, color: .blue)).to(equal(5))
            }
        }
    }

}
