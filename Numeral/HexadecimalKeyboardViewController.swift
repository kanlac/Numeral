//
//  HexadecimalKeyboardViewController.swift
//  Number Converter
//
//  Created by serfusE on 03/01/2018.
//  Copyright © 2018 Dean. All rights reserved.
//

import UIKit

class HexadecimalKeyboardViewController: UIViewController {

    @IBAction func oneButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: hexOne)
    }
    @IBAction func twoButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: hexTwo)
    }
    @IBAction func threeButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: hexThree)
    }
    @IBAction func fourButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: hexFour)
    }
    @IBAction func fiveButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: hexFive)
    }
    @IBAction func sixButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: hexSix)
    }
    @IBAction func sevenButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: hexSeven)
    }
    @IBAction func eightButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: hexEight)
    }
    @IBAction func nineButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: hexNine)
    }
    @IBAction func AButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: hexA)
    }
    @IBAction func BButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: hexB)
    }
    @IBAction func CButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: hexC)
    }
    @IBAction func DButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: hexD)
    }
    @IBAction func EButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: hexE)
    }
    @IBAction func FButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: hexF)
    }
    @IBAction func zeroButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: hexZero)
    }
    @IBAction func deleteButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: hexDelete)
    }
    @IBAction func clearButton(_ sender: Any) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationKey), object: nil, userInfo: clear)
    }
    
}
