//
//  Question.swift
//  demoGame
//
//  Created by 尹家桐 on 2019/3/25.
//  Copyright © 2019 尹家桐. All rights reserved.
//

import Foundation

class Question{
    var title : String
    var choices : [String]
    var answer : Int
    
    init(){
        title = "Not Found"
        choices = ["ans","default", "default", "default", "default"]
        answer = 1
    }
}
