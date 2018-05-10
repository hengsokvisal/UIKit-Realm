//
//  viewDataStore.swift
//  IOSTrainingProject4-Realm
//
//  Created by HengVisal on 5/9/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//

import RealmSwift

final class UserEntity : Object{
    @objc dynamic var id : Int = 0
    @objc dynamic var name : String = ""
    override static func primaryKey() -> String? {
        return "id"
    }
}
