//
//  SecondScreenRouter.swift
//  IOSTrainingProject4-Realm
//
//  Created by HengVisal on 5/10/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//

import UIKit
struct SecondScreenRouter {
    
    weak var viewController : UIViewController?
    init(viewController : UIViewController) {
        self.viewController = viewController
    }
}

// MARK: - Route
extension SecondScreenRouter{
    func navigateToThirdScreen(){
        self.viewController?.present(ThirdViewController(), animated: true, completion: nil)
    }
}
