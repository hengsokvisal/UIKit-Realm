//
//  FirstTabViewController.swift
//  IOSTraningProject3
//
//  Created by HengVisal on 5/9/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//

import UIKit

class FirstTabViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.white
        createComponent()
    }

}

// Create component for FirstViewController
extension FirstTabViewController{
    func createComponent()
    {
        let lbl = UILabel()
        lbl.text = "This is UILabel"
        lbl.textColor = UIColor.black
        
        self.view.addSubview(lbl)
        
        lbl.snp.makeConstraints { (make) in
            make.center.equalTo(self.view.snp.center)
        }
    }
}
