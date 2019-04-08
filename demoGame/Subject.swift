//
//  Subject.swift
//  demoGame
//
//  Created by 尹家桐 on 2019/3/28.
//  Copyright © 2019 尹家桐. All rights reserved.
//

import Foundation

class Subject{
    var name : String
    var chapterNum : Int
    var Chapters : [Chapter]
    
    init(n: String, cn: Int, cpt: [Chapter]){
        self.name = n
        self.chapterNum = cn
        self.Chapters = cpt
    }
}
