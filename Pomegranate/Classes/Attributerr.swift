//
//  Attributerr.swift
//  Pods
//
//  Created by Tony Toussaint on 2/21/17.
//
//

import Foundation
import UIKit

public struct Attributerr{
    
    public func colorSubstring(color : UIColor, substring : String, fullString : String) -> NSAttributedString{
        let range = (fullString as NSString).range(of: substring)
        
        let attribute = NSMutableAttributedString.init(string: fullString)
        attribute.addAttribute(NSForegroundColorAttributeName, value: color , range: range)
        
        return attribute
    }
    
    
    
}
