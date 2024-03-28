//
//  ResourceUti.swift
//  zzylib_Example
//
//  Created by 花开 on 2024/3/27.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit
enum zzylibEnum : String {

    case learningFilesPptIcon = "learning_files_ppt_icon"
    
    var image : UIImage? {
        return UIImage(named: self.rawValue)
    }
    
}
 
