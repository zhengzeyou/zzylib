//
//  ZZRouterUti.swift
//  zzylib_Example
//
//  Created by 花开 on 2024/3/26.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import CTMediator


/// 路由工具类
class MLSRRouterUti {
    
    class func getFinalParams(moduleName: String, params: [AnyHashable: Any]?) -> [AnyHashable: Any] {
        var finalParams = [
            kCTMediatorParamsKeySwiftTargetModuleName : moduleName
        ] as! [AnyHashable: Any]
        
        if let param = params {
            finalParams.merge(param) { (_, new) in new }
        }
        return finalParams
    }
}
