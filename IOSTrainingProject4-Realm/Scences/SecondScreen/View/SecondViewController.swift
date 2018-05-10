//
//  SecondViewController.swift
//  IOSTrainingProject4-Realm
//
//  Created by HengVisal on 5/9/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//

import SnapKit

class SecondViewController: UIViewController {
    let button : UIButton = UIButton()
    var presenter : SecondScreenPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let route = SecondScreenRouter(viewController: self)
        presenter = SecondScreenPresenter(router: route)
        createComponent()
        layoutSetup()
    }
}

// MARK: - Create Component
extension SecondViewController{
    func createComponent() -> Void {
        self.view.backgroundColor = UIColor.white
        
        button.setTitle("Get My Name", for: .normal)
        button.backgroundColor = UIColor.blue
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
}

// MARK: - LayoutSetup
extension SecondViewController{
    func layoutSetup() -> Void {
        button.snp.makeConstraints { (make) in
            make.center.equalTo(self.view.snp.center)
            make.width.equalTo(150)
            make.height.equalTo(50)
        }
    }
}

// MARK: - Button Action
extension SecondViewController{
    @objc func buttonAction() -> Void {
        presenter?.request()
    }
}
