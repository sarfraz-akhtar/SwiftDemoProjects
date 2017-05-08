//
//  ViewController.swift
//  SwiftReactNativeIntegrationDemo
//
//  Created by Sarfraz Akhtar on 5/5/17.
//  Copyright © 2017 SchedulingPlus. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnTap(_ sender: Any) {
        NSLog("Hello")
        let jsCodeLocation = URL(string: "http://localhost:8081/index.ios.bundle?platform=ios")
//        let mockData:NSDictionary = ["scores":
//            [
//                ["name":"Alex", "value":"42"],
//                ["name":"Joel", "value":"10"]
//            ]
//        ]
        
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "ReactAPP",
            initialProperties: nil,
            launchOptions: nil
        )
        let vc = UIViewController()
        vc.view = rootView
        self.present(vc, animated: true, completion: nil)  
        
    }

}

