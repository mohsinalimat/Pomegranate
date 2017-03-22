//
//  UIColor+Colorerr.swift
//  Pods
//
//  Created by Tony Toussaint on 3/1/17.
//
//

import Foundation

public extension UIColor{
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
    
    public struct Colorerr{
        public struct SocialMedia{
            public static let twitter = UIColor(netHex: 0x0084b4)
            public static let youtube = UIColor(netHex: 0xe52d27)
            public static let facebook = UIColor(netHex: 0x3b5998)
            public static let snapchat = UIColor(netHex: 0xfffc00)
            public static let spotify = UIColor(netHex: 0x84bd00)
            public static let linkedin = UIColor(netHex: 0x0077B5)
            public static let vine = UIColor(netHex: 0x00bf8f)
            public static let quora = UIColor(netHex: 0xa82400)
        }
        public struct Red{
            public static let regular = UIColor(netHex: 0xff0000)
            public static let light = UIColor(netHex: 0xff7777)
            public static let dark = UIColor(netHex: 0x990000)
        }
        public struct Green{
            public static let regular = UIColor(netHex: 0x3be06d)
            public static let light = UIColor(netHex: 0x93eeaf)
            public static let dark = UIColor(netHex: 0x12702e)
        }
        
        public struct Purple{
            public static let regular = UIColor(netHex: 0xd51abc)
            public static let light = UIColor(netHex: 0xf087e2)
            public static let dark = UIColor(netHex: 0x7a0f6c)
        }
        
        public struct Blue{
            public static let regular = UIColor(netHex: 0x0000ff)
            public static let light = UIColor(netHex: 0x3333ff)
            public static let dark = UIColor(netHex: 0x000099)
        }
        public struct Gray{
            public static let regular = UIColor(netHex: 0x7a7a7a)
            public static let light = UIColor(netHex: 0xbebebe)
            public static let dark = UIColor(netHex: 0x474747)
        }
        public struct Yellow{
            public static let regular = UIColor(netHex: 0xffff00)
            public static let light = UIColor(netHex: 0xFFFF88)
            public static let dark = UIColor(netHex: 0x888800)
        }
        
        public struct Orange{
            public static let regular = UIColor(netHex: 0xffb833)
            public static let light = UIColor(netHex: 0xffc966)
            public static let dark = UIColor(netHex: 0xffa600)
        }
        public struct Pink{
            public static let regular = UIColor(netHex: 0xf7879a)
            public static let light = UIColor(netHex: 0xff9eaf)
            public static let dark = UIColor(netHex: 0xef33f5d)
        }
    }
}
