//
//  Figures.swift
//  demoGame
//
//  Created by 尹家桐 on 2019/3/25.
//  Copyright © 2019 尹家桐. All rights reserved.
//

import Foundation
import UIKit

class Figures {
    
    var name : String
    var gender : String
    var pic : UIImage
    var affection : Int //好感度
    
    init(){
        name = "名为miku的servant"
        let img = UIImage(named: "miku01")
        pic = img!
        gender = "女"
        affection = 0
    }
    
    func AffectionRise(val : Int){
       affection += val
    }
}
