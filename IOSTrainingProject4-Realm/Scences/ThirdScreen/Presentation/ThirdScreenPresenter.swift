//
//  ThirdScreenPresenter.swift
//  IOSTrainingProject4-Realm
//
//  Created by HengVisal on 5/10/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//

import RealmSwift

class ThirdScreenPresenter{
    func getData(object : Object.Type , primaryKey : Int) -> Object {
        var username : Object?
        do{
            let realm = try Realm()
            username = realm.object(ofType: object, forPrimaryKey: primaryKey)!
        }catch{
            print(Error.self)
        }
        return username!
    }
}
