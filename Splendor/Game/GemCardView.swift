import UIKit
public class GemCard {
    let blueCost: Int
    let greenCost: Int
    let redCost: Int

    public init(blueCost: Int, greenCost: Int, redCost: Int) {
        self.blueCost = blueCost
        self.greenCost = greenCost
        self.redCost = redCost
    }
}
@IBDesignable public class GemCardView: UIView {
    @IBInspectable var blueCost: Int = 0
    @IBInspectable var greenCost: Int = 0
    @IBInspectable var redCost: Int = 0
    @IBInspectable var isPurchasable: Bool = false

    public override func draw(_ rect: CGRect) {
        SplendorKit.drawGemCard(frame: rect, resizing: .stretch, blueCost: String(blueCost), greenCost: String(greenCost), redCost: String(redCost), isPurchasable: isPurchasable)
    }

    public func set(blueCost: Int, greenCost: Int, redCost: Int) {
        self.blueCost = blueCost
        self.greenCost = greenCost
        self.redCost = redCost
        setNeedsDisplay()
    }

    public func set(card: GemCard) {
        blueCost = card.blueCost
        greenCost = card.greenCost
        redCost = card.redCost
        setNeedsDisplay()
    }
}
