//
//  SecondTabViewController.swift
//  IOSTraningProject3
//
//  Created by HengVisal on 5/9/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//

import UIKit
import SnapKit
import RxCocoa
import RxSwift

class SecondTabViewController: UINavigationController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pushViewController(SecondIndexViewController(), animated: true)
    }
}



