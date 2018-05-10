//
//  ViewController.swift
//  IOSTrainingProject4-Realm
//
//  Created by HengVisal on 5/9/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//

import UIKit
import SnapKit
import RealmSwift
class ViewController: UIViewController {
    
    let label : UILabel = UILabel()
    let textfield : UITextField = UITextField()
    let button : UIButton = UIButton()
    static var id : Int = Int(arc4random())
    
    var presenter: ViewPresenter?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let router = HomeScreenRouter(vc: self)
        self.presenter = ViewPresenter(router: router)
        
        createComponent()
        addSupView()
        layoutSetup()
    }
}

// MARK: - CreateComponent
extension ViewController{
    func createComponent() -> Void {
        self.view.backgroundColor = UIColor.white
        
        label.text = "Input your name"
        label.textColor = UIColor.black
      
        textfield.backgroundColor = UIColor.white
        textfield.borderStyle = .line
        textfield.placeholder = "My name is ..."
   
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = UIColor.blue
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
    }
}

// MARK: - Add SupView
extension ViewController{
    func addSupView() -> Void {
        self.view.addSubview(label)
        self.view.addSubview(textfield)
        self.view.addSubview(button)
    }
}

// MARK: - LayoutSetup
extension ViewController{
    func layoutSetup() -> Void {
        
        label.snp.makeConstraints { (make) in
            make.centerY.equalTo(self.view.snp.top).offset(150)
            make.left.equalTo(self.view.snp.left).offset(40)
        }
        
        textfield.snp.makeConstraints { (make) in
            make.width.equalTo(300)
            make.height.equalTo(50)
            make.left.equalTo(label.snp.left)
            make.centerY.equalTo(label.snp.bottom).offset(40)
        }

        button.snp.makeConstraints { (make) in
            make.width.equalTo(150)
            make.height.equalTo(50)
            make.centerX.equalTo(self.view.snp.centerX)
            make.centerY.equalTo(textfield.snp.bottom).offset(70)
        }
    }
}

// MARK: - Button Action
extension ViewController
{
    @objc func buttonClick() -> Void
    {
        ViewController.id = ViewController.id + 1
        presenter?.onSubmit(name: textfield.text!, id: ViewController.id)
    }
}

