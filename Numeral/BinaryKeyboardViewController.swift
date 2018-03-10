//
//  BinaryKeyboardViewController.swift
//  Number Converter
//
//  Created by serfusE on 14/12/2017.
//  Copyright © 2017 Dean. All rights reserved.
//

import UIKit

class BinaryKeyboardViewController: UIViewController {
    
    @IBAction func zeroButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: binZero)
    }
    @IBAction func oneButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: binOne)
    }
    @IBAction func deleteButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: binDelete)
    }
    @IBAction func clearButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: clear)
    }
    
    
}
