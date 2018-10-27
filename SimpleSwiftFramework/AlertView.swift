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

extension UIViewController : SimpleSwiftFramework {

    func alert(message : String) {
        let alert = UIAlertController(title: "Alert from FrameWork", message: "Your message is \"" + message + "\"", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Done", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
