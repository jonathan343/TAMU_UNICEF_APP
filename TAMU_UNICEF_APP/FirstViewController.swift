//
//  FirstViewController.swift
//  TAMU_UNICEF_APP
//
//  Created by Jonathan Gaytan on 1/28/20.
//  Copyright © 2020 TAMU_UNICEF. All rights reserved.
//

import UIKit
import WebKit


class FirstViewController: UIViewController, WKNavigationDelegate{

    
    var webView: WKWebView!
    
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://www.unicef.org/stories")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        
        // Do any additional setup after loading the view.
    }
    
    


}

