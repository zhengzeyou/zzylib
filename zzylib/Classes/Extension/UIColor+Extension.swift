//
//  UIColor+Extension.swift
//  zzylib_Example
//
//  Created by 花开 on 2024/3/27.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit

extension UIColor {
    
    public convenience init?(hexString: String, alpha: Float = 1.0) {
        let set = CharacterSet.whitespacesAndNewlines
        var hex = hexString.trimmingCharacters(in: set).uppercased()
        
        if hex.hasPrefix("#") {
            hex.remove(at: hex.startIndex)
        }
        
        guard let hexVal = Int(hex, radix: 16) else {
            self.init()
            return nil
        }
        
        switch hex.count {
        case 3:
            self.init(hex3: hexVal, alpha: alpha)
        case 6:
            self.init(hex6: hexVal, alpha: alpha)
        default:
            self.init()
            return nil
        }
    }
  
}

private extension UIColor {
    convenience init?(hex3: Int, alpha: Float) {
        self.init(red:   CGFloat( ((hex3 & 0xF00) >> 8).duplicate4bits() ) / 255.0,
                  green: CGFloat( ((hex3 & 0x0F0) >> 4).duplicate4bits() ) / 255.0,
                  blue:  CGFloat( ((hex3 & 0x00F) >> 0).duplicate4bits() ) / 255.0,
                  alpha: CGFloat(alpha))
    }
    
    convenience init?(hex6: Int, alpha: Float) {
        self.init(red:   CGFloat( (hex6 & 0xFF0000) >> 16 ) / 255.0,
                  green: CGFloat( (hex6 & 0x00FF00) >> 8 ) / 255.0,
                  blue:  CGFloat( (hex6 & 0x0000FF) >> 0 ) / 255.0,
                  alpha: CGFloat(alpha))
    }
}


private extension Int {
    func duplicate4bits() -> Int {
        return (self << 4) + self
    }
}
