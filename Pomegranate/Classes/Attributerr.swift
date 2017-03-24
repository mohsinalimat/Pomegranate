//
//  Attributerr.swift
//  Pods
//
//  Created by Tony Toussaint on 2/21/17.
//
//

import Foundation
import UIKit

/*
 NSBackgroundColorAttributeName: NSColor
 NSBaselineOffsetAttributeName: NSNumber (Float)
 NSFontAttributeName: NSFont
 NSForegroundColorAttributeName: NSColor
 NSUnderlineStyleAttributeName: NSNumber (Int)
 */

public class Attributerr{
    
    public static let sharedAttributerr = Attributerr()
    /// Function to color a substring of a string
    public func colorSubstring(color : UIColor, substring : String, fullString : String) -> NSAttributedString{
        let range = (fullString as NSString).range(of: substring)
        
        let attribute = NSMutableAttributedString.init(string: fullString)
        attribute.addAttribute(NSForegroundColorAttributeName, value: color , range: range)
        
        return attribute
    }
    /// Function to add certain attributes to a substring
    public func addAttributeToSubstring(fullString: String, substring: String, backgroundColor: UIColor = .clear , font: UIFont = UIFont(name: "System", size: 12)!, color: UIColor = .black, underLineStyle: Int = 0 )->NSAttributedString{
        
        let range = (fullString as NSString).range(of: substring)
        let attribute = NSMutableAttributedString.init(string: fullString)

        let attributes: [String: Any] = [
            NSForegroundColorAttributeName: color,
            NSFontAttributeName: font,
            NSUnderlineStyleAttributeName: underLineStyle,NSBackgroundColorAttributeName: backgroundColor
        ]
        
        attribute.addAttributes(attributes, range: range)
        return attribute
        
    }
    /// Add certain attributes to a NSRange
    public func addAttributesToRange(string: String, range: NSRange, backgroundColor: UIColor = .clear , font: UIFont = UIFont(name: "System", size: 12)!, color: UIColor = .black, underLineStyle: Int = 0)->NSAttributedString{
        
        let attribute = NSMutableAttributedString.init(string: string)
        
        let attributes: [String: Any] = [
            NSForegroundColorAttributeName: color,
            NSFontAttributeName: font,
            NSUnderlineStyleAttributeName: underLineStyle,NSBackgroundColorAttributeName: backgroundColor
        ]
        
        attribute.addAttributes(attributes, range: range)
        return attribute

    }
    /// Create a string using certain attributes
    public func create(string: String ,backgroundColor: UIColor = .clear , font: UIFont = UIFont(name: "System", size: 12)!, color: UIColor = .black, underLineStyle: Int = 0) -> NSAttributedString{
        let attributes: [String: Any] = [
            NSForegroundColorAttributeName: color,
            NSFontAttributeName: font,
            NSUnderlineStyleAttributeName: underLineStyle,NSBackgroundColorAttributeName: backgroundColor
            ]
        let attributed = NSAttributedString(string: string, attributes: attributes)
        return attributed
    }
    
//    public var string : String = ""
//    public var backgroundColor : UIColor = .clear
//    public var font : UIFont = UIFont(name: "System", size: 12)!
//    public var color : UIColor = .black
//    public var underlineStyle : Int = 0
//    public var text : NSAttributedString = NSAttributedString()
//
//   public init() {
//        let attributes: [String: Any] = [
//            NSForegroundColorAttributeName: color,
//            NSFontAttributeName: font,
//            NSUnderlineStyleAttributeName: underlineStyle,NSBackgroundColorAttributeName: backgroundColor
//        ]
//
//        text = NSAttributedString(string: string, attributes: attributes)
//
//    }
}
