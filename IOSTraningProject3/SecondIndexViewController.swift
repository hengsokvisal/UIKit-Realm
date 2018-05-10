//
//  SecondIndexViewController.swift
//  IOSTraningProject3
//
//  Created by HengVisal on 5/9/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//

import UIKit

class SecondIndexViewController: UIViewController {

    let btn : UIButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        createComponent()
    }
}
//Create components for secondTabViewController
extension SecondIndexViewController{
    func createComponent()
    {
        btn.setTitle("UIButton", for: .normal)
        btn.backgroundColor = UIColor.blue
        btn.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        self.view.addSubview(btn)
        setUpLayout()
    }
    
    // Push To detailPageViewController
    @objc func buttonAction(sender: UIButton!) {
        let newVC = SecondIndexDetailPageViewController()
        self.navigationController?.pushViewController(newVC, animated: true)
    }
}
// Layout Setup
extension SecondIndexViewController {
    func setUpLayout()
    {
        btn.snp.makeConstraints { (make) in
            make.width.equalTo(150)
            make.height.equalTo(50)
            make.center.equalTo(self.view.snp.center)
        }
    }
}

