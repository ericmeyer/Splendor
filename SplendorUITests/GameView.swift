import Nimble
import Quick

class GameView {

    static func launch() -> GameView {
        let application = XCUIApplication()
        application.launch()
        return GameView(application: application)
    }

    let application: XCUIApplication

    init(application: XCUIApplication) {
        self.application = application
    }

    func chipCount(collection: AccessibilityIdentifiers.ChipCollections, color: AccessibilityIdentifiers.ChipColors) -> Int? {
        return Int(chipCountLabel(collection: collection, color: color).label)
    }

    func availableCardCount() -> Int {
        return 1
    }

    func isPurchasable(card: Int) -> Bool {
        return false
    }

    func tap(collection: AccessibilityIdentifiers.ChipCollections, color: AccessibilityIdentifiers.ChipColors) {
        chipCountLabel(collection: collection, color: color).tap()
    }

    private func chipCountLabel(collection: AccessibilityIdentifiers.ChipCollections, color: AccessibilityIdentifiers.ChipColors) -> XCUIElement {
        let collectionView = application.collectionViews.matching(identifier: collection.rawValue)
        let chipCountLabel = collectionView.staticTexts[color.rawValue]
        expect(chipCountLabel.exists).to(beTrue())
        return chipCountLabel
    }

}
