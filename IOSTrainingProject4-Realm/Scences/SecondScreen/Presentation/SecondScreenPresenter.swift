//
//  SecondScreenPresenter.swift
//  IOSTrainingProject4-Realm
//
//  Created by HengVisal on 5/10/18.
//  Copyright © 2018 HengVisal. All rights reserved.
//

class SecondScreenPresenter{
    
    var router : SecondScreenRouter?
    
    init(router : SecondScreenRouter) {
        self.router = router
    }
    
    func request(){
        router?.navigateToThirdScreen()
    }
}
