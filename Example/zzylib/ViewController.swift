//
//  ViewController.swift
//  zzylib
//
//  Created by yunbo on 03/26/2024.
//  Copyright (c) 2024 yunbo. All rights reserved.
//

import UIKit
import zzylib
import CTMediator

class ViewController: UIViewController {

    override func viewDidLoad() {

        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        if let vc = CTMediator.sharedInstance().ZZBaseViewController_show() {
            
            self.present(vc, animated: true)

        }
        
    }
}

