import Quick
import Nimble

class BuyingCardsUITests: QuickSpec {

    override func spec() {
        describe("The available cards") {
            it("start as non-purchasable") {
                let gameView = GameView.launch()

                expect(gameView.availableCardCount()).to(equal(1))
                expect(gameView.isPurchasable(card: 0)).to(beFalse())

                gameView.tap(collection: .playerOne, color: .blue)
                gameView.tap(collection: .playerOne, color: .green)

                expect(gameView.isPurchasable(card: 0)).to(beTrue())
            }
        }
    }
    
}
