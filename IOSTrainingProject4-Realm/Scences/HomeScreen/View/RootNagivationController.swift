//
//  RootNagivationController.swift
//  IOSTrainingProject4-Realm
//
//  Created by HengVisal on 5/9/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//

import UIKit

class RootNagivationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
       self.pushViewController(ViewController(), animated: false)
    }

}
