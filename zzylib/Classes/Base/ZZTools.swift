//
//  ZZTools.swift
//  zzylib_Example
//
//  Created by 花开 on 2024/3/27.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation
public class ZZTools : NSObject {
    
    public static let sharedInstance: ZZTools = ZZTools()
    
    public func showMessage(msg:String) -> String{
        print("调用了工具类\(msg)")
        return msg
    }
    
}
