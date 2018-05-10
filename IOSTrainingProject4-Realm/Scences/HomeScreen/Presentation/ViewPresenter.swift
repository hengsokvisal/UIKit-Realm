//
//  viewPresenter.swift
//  IOSTrainingProject4-Realm
//
//  Created by HengVisal on 5/9/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//
import RealmSwift

class ViewPresenter{
    
    var router : HomeScreenRouter?
    
    
    init(router: HomeScreenRouter) {
       self.router = router
    }
    
    func onSubmit(name: String, id: Int) -> Void {
        
        self.request(name: name, id: id)
        self.navigateToSecond()
    }
    
    func request (name : String , id : Int) -> Void
    {
        let dataStore = UserEntity(value: ["id" : id,"name": name])
        do {
            let realm = try Realm()
            try realm.write {
                realm.add(dataStore)
            }
        }catch {
            debugPrint(error)
        }
    }
    
    func navigateToSecond() {
        router?.nagivateToSecondScreen()
    }
    
    
    
    
}
