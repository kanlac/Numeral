//
//  DecimalKeyboardViewController.swift
//  Number Converter
//
//  Created by serfusE on 28/12/2017.
//  Copyright © 2017 Dean. All rights reserved.
//

import UIKit

class DecimalKeyboardViewController: UIViewController {

    @IBAction func oneButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: decOne)
    }
    @IBAction func twoButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: decTwo)
    }
    @IBAction func threeButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: decThree)
    }
    @IBAction func fourButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: decFour)
    }
    @IBAction func fiveButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: decFive)
    }
    @IBAction func sixButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: decSix)
    }
    @IBAction func sevenButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: decSeven)
    }
    @IBAction func eightbutton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: decEight)
    }
    @IBAction func nineButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: decNine)
    }
    @IBAction func zeroButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: decZero)
    }
    @IBAction func deleteButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: decDelete)
    }
    @IBAction func clearButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: clear)
    }
    
    
}
