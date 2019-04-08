//
//  Chapter.swift
//  demoGame
//
//  Created by 尹家桐 on 2019/3/28.
//  Copyright © 2019 尹家桐. All rights reserved.
//

import Foundation

class Chapter{
    var chapterName : String
    var chapterNo : Int
    var chapterPractice : [Question]
    
    init(cn : String, cno : Int, cp : [Question]){
        self.chapterName = cn
        self.chapterNo = cno
        self.chapterPractice = cp
    }
}
