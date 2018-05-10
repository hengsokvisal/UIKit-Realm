//
//  ThirdViewController.swift
//  IOSTrainingProject4-Realm
//
//  Created by HengVisal on 5/9/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//

import RealmSwift
import SnapKit
class ThirdViewController: UIViewController {
    
    let label : UILabel = UILabel()
    let textView : UITextView = UITextView()
    let button : UIButton =  UIButton()
    var data : Object?
    let presenter : viewPresenter = viewPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.data = getData()
        createComponent()
        addSupView()
        layoutSetup()
    }
    
}

// MARK: - Create Components
extension ThirdViewController{
    func createComponent(){
        
        self.view.backgroundColor = UIColor.white
        
        label.text = "Your Name Is"
        label.textColor = UIColor.black
        
        if let name = self.data!["name"]{
            textView.text = String(describing: name)
        }
        textView.textColor = UIColor.black
        textView.font = UIFont.boldSystemFont(ofSize: 24)
        
        button.setTitle("Get Your Name", for: .normal)
        button.backgroundColor = UIColor.blue
        
    }
}

// MARK: - AddSupView
extension ThirdViewController{
    
    func addSupView(){
        self.view.addSubview(label)
        self.view.addSubview(textView)
        self.view.addSubview(button)
    }
}

// MARK: - LayoutSetup
extension ThirdViewController{
    func layoutSetup(){
        label.snp.makeConstraints { (make) in
            make.left.equalTo(self.view.snp.left).offset(50)
            make.top.equalTo(self.view.snp.top).offset(150)
        }
        
        textView.snp.makeConstraints { (make) in
            make.left.equalTo(label.snp.left)
            make.top.equalTo(label.snp.bottom).offset(50)
            make.width.equalTo(400)
            make.height.equalTo(150)
        }
        
        button.snp.makeConstraints { (make) in
            make.center.equalTo(self.view.snp.center)
            make.width.equalTo(200)
            make.height.equalTo(50)
        }
    }
}

// MARK: - GetDataFromRealm
extension ThirdViewController{
    func getData() -> Object{
       return presenter.getData(object: viewDataStore.self , primaryKey: ViewController.id)
    }
}
