//
//  TabBarController.swift
//  IOSTraningProject3
//
//  Created by HengVisal on 5/9/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//

import UIKit
import SnapKit

class TabBarController: UITabBarController {
   // let tabBar : UITabBarController = UITabBarController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createTabBar()
    }
}

//Create TabBar
extension TabBarController{
    func createTabBar(){
        
        let firstViewController = FirstTabViewController()
        firstViewController.tabBarItem.title = "PAGE1"
        firstViewController.tabBarItem = UITabBarItem(title: "PAGE1", image: #imageLiteral(resourceName: "1_notselected") , selectedImage: #imageLiteral(resourceName: "1_selected"))
        
        let secondViewController = SecondTabViewController()
        secondViewController.tabBarItem = UITabBarItem(title: "PAGE2", image: #imageLiteral(resourceName: "2_notselected") , selectedImage: #imageLiteral(resourceName: "2_selected"))
        
        let thirdViewController = ThirdTabViewController()
        thirdViewController.tabBarItem = UITabBarItem(title: "PAGE3", image: #imageLiteral(resourceName: "3_notselected") , selectedImage: #imageLiteral(resourceName: "3_selected"))
        
        let tabBarList = [firstViewController, secondViewController ,thirdViewController]
        self.viewControllers = tabBarList
    }
}


