//
//  Home_interface.swift
//  demoGame
//
//  Created by 尹家桐 on 2019/4/1.
//  Copyright © 2019 尹家桐. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class HomeInterface: UIViewController,WKUIDelegate {
    
    var webView : WKWebView!
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webConfiguration.userContentController.add(self, name: "logger")
        webConfiguration.preferences.setValue(true, forKey: "allowFileAccessFromFileURLs")
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let path = Bundle.main.path(forResource: "test", ofType: ".html", inDirectory: "HTML5")
//        let url0 = URL(fileURLWithPath: path!)
//        let request = URLRequest(url: url0)
//        webView.load(request)


//        theWebView.scrollView.bounces = false
//
//        theWebView.load(request)
//        self.view.addSubview(theWebView)
//      https://live2d.fghrsh.net/demo/1.4.2/
        WebConsole.enable()
        let myURL = URL(string: "https://live2d.fghrsh.net/demo/1.4.2/")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
//        let log = webView.value(forKeyPath: "documentView.webView.mainFrame.javaScriptContext")
//        log[@"console"][@"log"]
    }
        
    
    @IBAction func closePopup(segue: UIStoryboardSegue){
        NSLog("Back to main interface!")
    }
}
