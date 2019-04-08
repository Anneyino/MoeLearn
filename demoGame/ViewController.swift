 //
//  ViewController.swift
//  demoGame
//
//  Created by 尹家桐 on 2019/3/20.
//  Copyright © 2019 尹家桐. All rights reserved.
//

import UIKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func closePopup(segue: UIStoryboardSegue){
        NSLog("Back to main interface!")
    }
}

