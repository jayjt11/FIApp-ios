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

    private let zelle = Zelle(
        institutionId: "some_id",
        ssoKey: "sso_key",
        title : "ABC BANK",
        parameters: [
            "param1" : "1234",
            "param2" : "something"
        ]
    )

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
        view.addSubview(zelleView)
    }


}

