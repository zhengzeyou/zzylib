//
//  ZZMainViewModel.swift
//  zzylib_Example
//
//  Created by 花开 on 2024/3/27.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import RxRelay

class ZZMainViewModel {
    
    static let cellID:String = "cell_id"
    
    let tableSubject : BehaviorRelay<[ZZMainModel]> = BehaviorRelay(value: [])
    
    
}
