//
//  HomeScreenRoute.swift
//  IOSTrainingProject4-Realm
//
//  Created by HengVisal on 5/10/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//

import UIKit

struct HomeScreenRouter {
    
    var viewController : UIViewController?
    
    init(vc: UIViewController) {
        self.viewController = vc
    }
}
// MARK: - Navigation
extension HomeScreenRouter{
    func nagivateToSecondScreen(){
        self.viewController?.present(SecondViewController(), animated: true, completion: nil)
    }
}
