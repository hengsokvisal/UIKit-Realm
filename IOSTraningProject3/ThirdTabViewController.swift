//
//  ThirdTabViewController.swift
//  IOSTraningProject3
//
//  Created by HengVisal on 5/9/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//

import UIKit
import SnapKit

class ThirdTabViewController: UIViewController {
    let btn : UIButton = UIButton()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        createComponent()
    }
}
//Create Components
extension ThirdTabViewController{
    func createComponent(){
        btn.setTitle("UIButton", for: .normal)
        btn.backgroundColor = UIColor.blue
        btn.addTarget(self, action: #selector(buttonAction) , for: .touchUpInside)
        self.view.addSubview(btn)
        layoutSetup()
    }
    // Button Action
    @objc func buttonAction(){
        let alert = UIAlertController(title: "Title", message: "This is a message", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
}
//LayoutSetup
extension ThirdTabViewController{
    func layoutSetup(){
        btn.snp.makeConstraints { (make) in
            make.center.equalTo(self.view.snp.center)
            make.width.equalTo(150)
            make.height.equalTo(50)
        }
    }
}
