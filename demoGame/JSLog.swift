//
//  JSLog.swift
//  demoGame
//
//  Created by 尹家桐 on 2019/4/5.
//  Copyright © 2019 尹家桐. All rights reserved.
//

import Foundation
import WebKit

extension HomeInterface: WKScriptMessageHandler {
    public func userContentController(_ userContentController: WKUserContentController, didReceive message: WKScriptMessage){
        let body = message.body as! String
        if message.name == "logger" {
            print("JS log:\(body)")
            return
        }
        //Other logic
    }
}
