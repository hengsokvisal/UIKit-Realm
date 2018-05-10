//
//  viewPresenter.swift
//  IOSTrainingProject4-Realm
//
//  Created by HengVisal on 5/9/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//
import RealmSwift

class viewPresenter{
    
  
    func request (name : String , id : Int) -> Void
    {
        let dataStore = viewDataStore(value: ["id" : id,"name": name])
        do {
            let realm = try Realm()
            try realm.write {
                realm.add(dataStore)
            }
        }catch {
            debugPrint(error)
        }

    }
}
