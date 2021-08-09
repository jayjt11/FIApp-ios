//
//  ViewController.swift
//  FIApp
//
//  Created by Jayant Tiwari on 29/06/21.
//  Copyright © 2021 Fiserv. All rights reserved.
//

import UIKit
import ZelleSDK

class ViewController: UIViewController {

    //Original Instance
    
    private let zelle = Zelle(
        institutionId: "some_id",
        ssoKey: "sso_key",
        title : "ABC BANK",
        parameters: [
            "param1" : "1234",
            "param2" : "something"
        ]
    )
    
    
    // Constructed Url
    
//    private let zelle = Zelle(
//        baseUrl: "https://rxp-ui-test1.checkfreeweb.com/ftk_v21_1/",
//        institutionId: "88850059",
//        product: "Zelle",
//        ssoKey: "c8b3d9ed0d41f627a5e938fde80ac574",
//        title : "ABC BANK",
//        parameters: [
//            "key1" : "value1",
//            "key2" : "value2"
//        ]
//    )

    private lazy var bridge: Bridge = {
        Bridge(
            config: zelle,
            viewController: self
        )
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let zelleFrame = CGRect(x:0, y:0, width:view.frame.width, height:view.frame.height) //desired location
        let zelleView = bridge.view(frame: zelleFrame)
        
      //  let zelleView = bridge.popup(anchor: self.view)
        
        view.addSubview(zelleView)
    }


}

