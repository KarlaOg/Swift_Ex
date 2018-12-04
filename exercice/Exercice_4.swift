//
//  Exercice_4.swift
//  exercice
//
//  Created by Karla Og on 04/12/2018.
//  Copyright © 2018 Karla Og. All rights reserved.
//

import Foundation


class ApiManager {
    
    var baseURL:String
    
    init() {
        
        self.baseURL = "https://api.randomuser.me/"
    }
    
    func getRandomUser(completion: @escaping (Any) -> Void){
        
    }
}
