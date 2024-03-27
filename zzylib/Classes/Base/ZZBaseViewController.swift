//
//  ZZBaseViewController.swift
//  Pods
//
//  Created by 花开 on 2024/3/26.
//

import UIKit
 class ZZBaseViewController : UIViewController {
  
    override func viewDidLoad() {
        super.viewDidLoad()
        let image = UIImageView(image: UIImage(named: "learning_files_pdf_icon.png"))
        image.backgroundColor = .red
        image.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        view.addSubview(image)
    }
    
   

}

