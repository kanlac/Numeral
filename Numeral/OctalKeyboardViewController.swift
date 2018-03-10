//
//  OctalKeyboardViewController.swift
//  Number Converter
//
//  Created by serfusE on 03/01/2018.
//  Copyright © 2018 Dean. All rights reserved.
//

import UIKit

class OctalKeyboardViewController: UIViewController {

    @IBAction func oneButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: octOne)
    }
    @IBAction func twoButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: octTwo)
    }
    @IBAction func threeButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: octThree)
    }
    @IBAction func fourButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: octFour)
    }
    @IBAction func fiveButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: octFive)
    }
    @IBAction func sixButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: octSix)
    }
    @IBAction func sevenButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: octSeven)
    }
    @IBAction func zeroButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: octZero)
    }
    @IBAction func deleteButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: octDelete)
    }
    @IBAction func clearButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: clear)
    }
    
}
