//
//  target_zzylib.swift
//  CTMediator
//
//  Created by 花开 on 2024/3/26.
//

import UIKit

@objc class Target_zzy: NSObject {
    
    @objc func Action_homeViewController(_ parmas : [AnyHashable : Any]) -> UIViewController {
        let controller = ZZHomeViewController()
        return controller
    }
}
