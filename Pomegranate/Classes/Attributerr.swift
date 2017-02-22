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
    
    public func colorSubstring(color : UIColor, substring : String, fullString : String) -> NSAttributedString{
        let range = (fullString as NSString).range(of: substring)
        
        let attribute = NSMutableAttributedString.init(string: fullString)
        attribute.addAttribute(NSForegroundColorAttributeName, value: color , range: range)
        
        return attribute
    }
    
    public func createString(string: String ,backgroundColor: UIColor = .clear , font: UIFont = UIFont(name: "System", size: 12)!, color: UIColor = .black, underLineStyle: Int = 0) -> NSAttributedString{
        let attributes: [String: Any] = [
            NSForegroundColorAttributeName: color,
            NSFontAttributeName: font,
            NSUnderlineStyleAttributeName: underLineStyle,NSBackgroundColorAttributeName: backgroundColor
            ]
        let attributed = NSAttributedString(string: string, attributes: attributes)
        return attributed
    }
}
