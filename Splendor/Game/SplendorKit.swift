//
//  SplendorKit.swift
//  Splendor
//
//  Created on 1/17/20.
//  Copyright © 2020 (null). All rights reserved.
//
//  Generated by PaintCode
//  http://www.paintcodeapp.com
//
//  This code was generated by Trial version of PaintCode, therefore cannot be used for commercial purposes.
//



import UIKit

public class SplendorKit : NSObject {

    //// Drawing Methods

    @objc dynamic public class func drawGemCard(frame targetFrame: CGRect = CGRect(x: 0, y: 0, width: 140, height: 200), resizing: ResizingBehavior = .aspectFit, blueCost: String = "1", greenCost: String = "1", redCost: String = "1", isPurchasable: Bool = true) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()!
        
        //// Resize to Target Frame
        context.saveGState()
        let resizedFrame: CGRect = resizing.apply(rect: CGRect(x: 0, y: 0, width: 140, height: 200), target: targetFrame)
        context.translateBy(x: resizedFrame.minX, y: resizedFrame.minY)
        context.scaleBy(x: resizedFrame.width / 140, y: resizedFrame.height / 200)


        //// Color Declarations
        let color = UIColor(red: 0.337, green: 0.428, blue: 1.000, alpha: 1.000)
        let color2 = UIColor(red: 0.476, green: 1.000, blue: 0.385, alpha: 1.000)
        let color3 = UIColor(red: 0.980, green: 0.230, blue: 0.230, alpha: 1.000)

        //// Blue Gem Drawing
        let blueGemPath = UIBezierPath(ovalIn: CGRect(x: 13, y: 12, width: 31, height: 31))
        color.setFill()
        blueGemPath.fill()


        //// Red Gem Drawing
        let redGemPath = UIBezierPath(ovalIn: CGRect(x: 13, y: 90, width: 31, height: 31))
        color3.setFill()
        redGemPath.fill()


        //// Green Gem Drawing
        let greenGemPath = UIBezierPath(ovalIn: CGRect(x: 13, y: 51, width: 31, height: 31))
        color2.setFill()
        greenGemPath.fill()


        //// BlueCostLabel Drawing
        let blueCostLabelRect = CGRect(x: 13, y: 12, width: 31, height: 31)
        let blueCostLabelStyle = NSMutableParagraphStyle()
        blueCostLabelStyle.alignment = .center
        let blueCostLabelFontAttributes = [
            .font: UIFont.systemFont(ofSize: UIFont.labelFontSize),
            .foregroundColor: UIColor.black,
            .paragraphStyle: blueCostLabelStyle,
        ] as [NSAttributedString.Key: Any]

        let blueCostLabelTextHeight: CGFloat = blueCost.boundingRect(with: CGSize(width: blueCostLabelRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: blueCostLabelFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: blueCostLabelRect)
        blueCost.draw(in: CGRect(x: blueCostLabelRect.minX, y: blueCostLabelRect.minY + (blueCostLabelRect.height - blueCostLabelTextHeight) / 2, width: blueCostLabelRect.width, height: blueCostLabelTextHeight), withAttributes: blueCostLabelFontAttributes)
        context.restoreGState()


        //// GreenCostLabel Drawing
        let greenCostLabelRect = CGRect(x: 13, y: 51, width: 31, height: 31)
        let greenCostLabelStyle = NSMutableParagraphStyle()
        greenCostLabelStyle.alignment = .center
        let greenCostLabelFontAttributes = [
            .font: UIFont.systemFont(ofSize: UIFont.labelFontSize),
            .foregroundColor: UIColor.black,
            .paragraphStyle: greenCostLabelStyle,
        ] as [NSAttributedString.Key: Any]

        let greenCostLabelTextHeight: CGFloat = greenCost.boundingRect(with: CGSize(width: greenCostLabelRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: greenCostLabelFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: greenCostLabelRect)
        greenCost.draw(in: CGRect(x: greenCostLabelRect.minX, y: greenCostLabelRect.minY + (greenCostLabelRect.height - greenCostLabelTextHeight) / 2, width: greenCostLabelRect.width, height: greenCostLabelTextHeight), withAttributes: greenCostLabelFontAttributes)
        context.restoreGState()


        //// RedCostLabel Drawing
        let redCostLabelRect = CGRect(x: 13, y: 90, width: 31, height: 31)
        let redCostLabelStyle = NSMutableParagraphStyle()
        redCostLabelStyle.alignment = .center
        let redCostLabelFontAttributes = [
            .font: UIFont.systemFont(ofSize: UIFont.labelFontSize),
            .foregroundColor: UIColor.black,
            .paragraphStyle: redCostLabelStyle,
        ] as [NSAttributedString.Key: Any]

        let redCostLabelTextHeight: CGFloat = redCost.boundingRect(with: CGSize(width: redCostLabelRect.width, height: CGFloat.infinity), options: .usesLineFragmentOrigin, attributes: redCostLabelFontAttributes, context: nil).height
        context.saveGState()
        context.clip(to: redCostLabelRect)
        redCost.draw(in: CGRect(x: redCostLabelRect.minX, y: redCostLabelRect.minY + (redCostLabelRect.height - redCostLabelTextHeight) / 2, width: redCostLabelRect.width, height: redCostLabelTextHeight), withAttributes: redCostLabelFontAttributes)
        context.restoreGState()


        if (isPurchasable) {
            //// Rectangle Drawing
            let rectanglePath = UIBezierPath(rect: CGRect(x: 63, y: 71, width: 50, height: 50))
            UIColor.gray.setFill()
            rectanglePath.fill()
        }
        
        context.restoreGState()

    }




    @objc(SplendorKitResizingBehavior)
    public enum ResizingBehavior: Int {
        case aspectFit /// The content is proportionally resized to fit into the target rectangle.
        case aspectFill /// The content is proportionally resized to completely fill the target rectangle.
        case stretch /// The content is stretched to match the entire target rectangle.
        case center /// The content is centered in the target rectangle, but it is NOT resized.

        public func apply(rect: CGRect, target: CGRect) -> CGRect {
            if rect == target || target == CGRect.zero {
                return rect
            }

            var scales = CGSize.zero
            scales.width = abs(target.width / rect.width)
            scales.height = abs(target.height / rect.height)

            switch self {
                case .aspectFit:
                    scales.width = min(scales.width, scales.height)
                    scales.height = scales.width
                case .aspectFill:
                    scales.width = max(scales.width, scales.height)
                    scales.height = scales.width
                case .stretch:
                    break
                case .center:
                    scales.width = 1
                    scales.height = 1
            }

            var result = rect.standardized
            result.size.width *= scales.width
            result.size.height *= scales.height
            result.origin.x = target.minX + (target.width - result.width) / 2
            result.origin.y = target.minY + (target.height - result.height) / 2
            return result
        }
    }
}
