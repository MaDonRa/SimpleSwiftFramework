//
//  AlertView.swift
//  AlertView
//
//  Created by Sakkaphong Luaengvilai on 29/6/2561 BE.
//  Copyright © 2561 MaDonRa. All rights reserved.
//

import UIKit

public protocol SimpleSwiftFrameworkDelegate {
    func alert(message : String?)
}

@objc public class AlertViewSwift : NSObject , SimpleSwiftFrameworkDelegate {

    public func alert(message : String?) {
        print("alertalertalert")
        let alert = UIAlertController(title: "Alert from FrameWork", message: "Your message is \"" + (message ?? "") + "\"", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
       // self.present(alert, animated: true, completion: nil)
    }
}
