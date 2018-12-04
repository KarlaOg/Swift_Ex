//
//  Exercice_1.swift
//  exercice
//
//  Created by Karla Og on 09/11/2018.
//  Copyright © 2018 Karla Og. All rights reserved.
//

import Foundation

func condog(str :String , prefix :Character , suffix :String ) -> String{
    
   
    var str2 = str
    str2.append(suffix)
    str2.insert(prefix, at: str2.startIndex)
    return str2
};

