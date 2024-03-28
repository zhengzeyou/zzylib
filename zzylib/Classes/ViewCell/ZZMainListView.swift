//
//  ZZMainListView.swift
//  zzylib_Example
//
//  Created by 花开 on 2024/3/27.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import UIKit
import SnapKit

class ZZMainListView : UIView {
    let listView : UITableView = {
        
        let table = UITableView(frame: .zero, style: .grouped)
        return table
    }()
    
    init(){
        super.init(frame: .zero)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        initlizeSetting()
        contructConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ZZMainListView {
    private func initlizeSetting(){
        self.addSubview(self.listView)

    
    }
    
    private func contructConstraints(){
        listView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
    }
}
