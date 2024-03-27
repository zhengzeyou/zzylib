//
//  ZZLibRouter.swift
//  zzylib_Example
//
//  Created by 花开 on 2024/3/26.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import CTMediator

fileprivate let moduleName: String = "zzylib"
fileprivate let targetName: String = "zzy"

public extension CTMediator {
    
    ///
    @objc func  ZZBaseViewController_show() -> UIViewController? {
        guard let viewController = self.performTarget(targetName, action: "ZZBaseViewController", params: MLSRRouterUti.getFinalParams(moduleName: moduleName, params: nil), shouldCacheTarget: false) as? UIViewController else { return nil }
        return viewController
    }
    
  
}
