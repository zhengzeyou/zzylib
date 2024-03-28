//
//  ZZBaseViewController.swift
//  Pods
//
//  Created by 花开 on 2024/3/26.
//

import UIKit
import RxSwift
import RxRelay
import RxCocoa
import SnapKit

class ZZBaseViewController : UIViewController {
    let disposeBag = DisposeBag()
    
    let tableListView : ZZMainListView = ZZMainListView()
   
     override func viewDidLoad() {
        super.viewDidLoad()
        
         self.view.backgroundColor = UIColor(hexString: "#FEFEFE")
        initlizeSetting()
        contructConstraints()
    
    }
    
}


extension ZZBaseViewController {
    private func initlizeSetting(){
        view.addSubview(tableListView)
    
    }
    
    private func contructConstraints(){
        tableListView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
