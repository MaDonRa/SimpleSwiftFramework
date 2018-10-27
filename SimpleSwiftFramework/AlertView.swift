//
//  AlertView.swift
//  AlertView
//
//  Created by Sakkaphong Luaengvilai on 29/6/2561 BE.
//  Copyright © 2561 MaDonRa. All rights reserved.
//

import UIKit

protocol SimpleSwiftFramework {
    func alert(message : String)
}

class CallingFrameworkFunction : SimpleSwiftFramework {

    init() {}
    
    deinit {}
    
    internal func alert(message : String) {
        let alert = UIAlertController(title: "Alert from FrameWork", message: "Your message is \"" + message + "\"", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: nil))
    
        let alertWindow = UIWindow(frame: UIScreen.main.bounds)
        alertWindow.rootViewController = UIViewController()
        alertWindow.windowLevel = UIWindow.Level.alert + 1;
        alertWindow.makeKeyAndVisible()
        alertWindow.rootViewController?.present(alert, animated: true, completion: nil)
    }
}
