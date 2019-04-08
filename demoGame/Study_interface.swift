//
//  Study_interface.swift
//  demoGame
//
//  Created by 尹家桐 on 2019/3/26.
//  Copyright © 2019 尹家桐. All rights reserved.
//

import Foundation
import UIKit
class StudyInterface: UIViewController {
    @IBOutlet weak var questionTitle : UILabel!
    @IBOutlet weak var choice1 : UIButton!
    @IBOutlet weak var choice2 : UIButton!
    @IBOutlet weak var choice3 : UIButton!
    @IBOutlet weak var choice4 : UIButton!
    var Ques : Question!
    
    convenience init() {
        self.init()
        let Q = Question()
        Ques = Q
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let Q1 = Question()
        Q1.title = "1+1=?"
        Q1.choices = ["ans","2","4","1","3"]
        Q1.answer = 1
        Ques = Q1
        initChoice()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func initChoice(){
        questionTitle.text = Ques.title
        choice1.setTitle(Ques.choices[1], for: .normal)
        choice2.setTitle(Ques.choices[2], for: .normal)
        choice3.setTitle(Ques.choices[3], for: .normal)
        choice4.setTitle(Ques.choices[4], for: .normal)
        choice1.addTarget(self, action: #selector(chooseAns), for: UIControl.Event.touchUpInside)
        choice2.addTarget(self, action: #selector(chooseAns), for: UIControl.Event.touchUpInside)
        choice3.addTarget(self, action: #selector(chooseAns), for: UIControl.Event.touchUpInside)
        choice4.addTarget(self, action: #selector(chooseAns), for: UIControl.Event.touchUpInside)
    }
   @objc func chooseAns(sender: UIButton) {
        if (sender.tag == Ques.answer){
            sender.backgroundColor = UIColor.green
        }else{
            sender.backgroundColor = UIColor.red
            self.view.viewWithTag(Ques.answer)?.backgroundColor = UIColor.green
        }
    }
    
}
