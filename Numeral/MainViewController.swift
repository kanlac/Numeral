//
//  MainViewController.swift
//  Number Converter
//
//  Created by serfusE on 14/12/2017.
//  Copyright © 2017 Dean. All rights reserved.
//

import UIKit

var currentNumber: Number = Number()
let notificationKey = "notificationKey123"

class MainViewController: UIViewController {
    
    // MARK: Outlets.
    
    @IBOutlet weak var binary: UILabel!
    @IBOutlet weak var octal: UILabel!
    @IBOutlet weak var decimal: UILabel!
    @IBOutlet weak var hexadecimal: UILabel!
    
    @IBOutlet weak var containerViewBinary: UIView!
    @IBOutlet weak var containerViewOctal: UIView!
    @IBOutlet weak var containerViewDecimal: UIView!
    @IBOutlet weak var containerViewHexadecimal: UIView!
    
    
    // MARK: View Controller methods.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // auto font size.
        binary.numberOfLines = 2
        binary.adjustsFontSizeToFitWidth = true
        octal.numberOfLines = 2
        octal.adjustsFontSizeToFitWidth = true
        decimal.numberOfLines = 2
        decimal.adjustsFontSizeToFitWidth = true
        hexadecimal.numberOfLines = 2
        hexadecimal.adjustsFontSizeToFitWidth = true

        updateDisplay()
        NotificationCenter.default.addObserver(self, selector: #selector(updateNumberThoughNotification(_:)), name: NSNotification.Name(rawValue: notificationKey), object: nil)
        
        // show decimal keyboard on start.
        containerViewBinary.isHidden = true
        containerViewOctal.isHidden = true
        containerViewHexadecimal.isHidden = true
        
        // active lable's actions.
        binary.isUserInteractionEnabled = true
        octal.isUserInteractionEnabled = true
        decimal.isUserInteractionEnabled = true
        hexadecimal.isUserInteractionEnabled = true
        
        let binaryGesture = UITapGestureRecognizer(target: self, action: #selector(switchBinaryKeyboard(sender:)))
        let octalGesture = UITapGestureRecognizer(target: self, action: #selector(switchOctalKeyboard(sender:)))
        let decimalGesture = UITapGestureRecognizer(target: self, action: #selector(switchDecimalKeyboard(sender:)))
        let hexadecimalGesture = UITapGestureRecognizer(target: self, action: #selector(switchHexadecimalKeyboard(sender:)))
        
        binary.addGestureRecognizer(binaryGesture)
        octal.addGestureRecognizer(octalGesture)
        decimal.addGestureRecognizer(decimalGesture)
        hexadecimal.addGestureRecognizer(hexadecimalGesture)
        
    }
    
    
    // MARK: Switch Keyboard Views.
    
    enum Keyboards {
        case binary, octal, decimal, hexadecimal
    }
    
    func switchBinaryKeyboard(sender: UITapGestureRecognizer) { switchKeyboard(.binary) }
    func switchDecimalKeyboard(sender: UITapGestureRecognizer) { switchKeyboard(.decimal) }
    func switchOctalKeyboard(sender: UITapGestureRecognizer) { switchKeyboard(.octal) }
    func switchHexadecimalKeyboard(sender: UITapGestureRecognizer) { switchKeyboard(.hexadecimal) }
    
    func switchKeyboard(_ keyboard: Keyboards) {
        var keyboardStatus: [Keyboards: Bool] = [.binary: true, .octal: true, .decimal: true, .hexadecimal: true]
        keyboardStatus[keyboard] = false
        
        containerViewBinary.isHidden = keyboardStatus[.binary]!
        containerViewOctal.isHidden = keyboardStatus[.octal]!
        containerViewDecimal.isHidden = keyboardStatus[.decimal]!
        containerViewHexadecimal.isHidden = keyboardStatus[.hexadecimal]!
        
    }
    
    
    // MARK: Update numbers.
    
    func updateNumberThoughNotification(_ notification: Notification) {
        if let passedInstruction = notification.userInfo?["pressed"] as? String {
            
            let currentDecimal: Int64 = currentNumber.decimal
            
            switch (passedInstruction) {
                
                case "clear":
                    currentNumber.setValue(decimal: 0)
                
                case "0B":
                    if (currentDecimal > (Int64.max) / 2) { break }
                    currentNumber.setValue(decimal: currentDecimal * 2)
                case "1B":
                    if (currentDecimal > (Int64.max - 1) / 2) { break }
                    currentNumber.setValue(decimal: currentDecimal * 2 + 1)
                case "deleteB":
                    currentNumber.setValue(decimal: currentDecimal / 2)
                
                case "1O":
                    if (currentDecimal > (Int64.max - 1) / 8) { break }
                    currentNumber.setValue(decimal: currentDecimal * 8 + 1)
                case "2O":
                    if (currentDecimal > (Int64.max - 2) / 8) { break }
                    currentNumber.setValue(decimal: currentDecimal * 8 + 2)
                case "3O":
                    if (currentDecimal > (Int64.max - 3) / 8) { break }
                    currentNumber.setValue(decimal: currentDecimal * 8 + 3)
                case "4O":
                    if (currentDecimal > (Int64.max - 4) / 8) { break }
                    currentNumber.setValue(decimal: currentDecimal * 8 + 4)
                case "5O":
                    if (currentDecimal > (Int64.max - 5) / 8) { break }
                    currentNumber.setValue(decimal: currentDecimal * 8 + 5)
                case "6O":
                    if (currentDecimal > (Int64.max - 6) / 8) { break }
                    currentNumber.setValue(decimal: currentDecimal * 8 + 6)
                case "7O":
                    if (currentDecimal > (Int64.max - 7) / 8) { break }
                    currentNumber.setValue(decimal: currentDecimal * 8 + 7)
                case "0O":
                    if (currentDecimal > (Int64.max) / 8) { break }
                    currentNumber.setValue(decimal: currentDecimal * 8)
                case "deleteO":
                    currentNumber.setValue(decimal: currentDecimal / 8)
                
                case "1":
                    if (currentDecimal > (Int64.max - 1) / 10) { break }
                    currentNumber.setValue(decimal: currentDecimal * 10 + 1)
                case "2":
                    if (currentDecimal > (Int64.max - 2) / 10) { break }
                    currentNumber.setValue(decimal: currentDecimal * 10 + 2)
                case "3":
                    if (currentDecimal > (Int64.max - 3) / 10) { break }
                    currentNumber.setValue(decimal: currentDecimal * 10 + 3)
                case "4":
                    if (currentDecimal > (Int64.max - 4) / 10) { break }
                    currentNumber.setValue(decimal: currentDecimal * 10 + 4)
                case "5":
                    if (currentDecimal > (Int64.max - 5) / 10) { break }
                    currentNumber.setValue(decimal: currentDecimal * 10 + 5)
                case "6":
                    if (currentDecimal > (Int64.max - 6) / 10) { break }
                    currentNumber.setValue(decimal: currentDecimal * 10 + 6)
                case "7":
                    if (currentDecimal > (Int64.max - 7) / 10) { break }
                    currentNumber.setValue(decimal: currentDecimal * 10 + 7)
                case "8":
                    if (currentDecimal > (Int64.max - 8) / 10) { break }
                    currentNumber.setValue(decimal: currentDecimal * 10 + 8)
                case "9":
                    if (currentDecimal > (Int64.max - 9) / 10) { break }
                    currentNumber.setValue(decimal: currentDecimal * 10 + 9)
                case "0":
                    if (currentDecimal > (Int64.max) / 10) { break }
                    currentNumber.setValue(decimal: currentDecimal * 10)
                case "delete":
                    currentNumber.setValue(decimal: currentDecimal / 10)
                
                case "1H":
                    if (currentDecimal > (Int64.max - 1) / 16) { break }
                    currentNumber.setValue(decimal: currentDecimal * 16 + 1)
                case "2H":
                    if (currentDecimal > (Int64.max - 2) / 16) { break }
                    currentNumber.setValue(decimal: currentDecimal * 16 + 2)
                case "3H":
                    if (currentDecimal > (Int64.max - 3) / 16) { break }
                    currentNumber.setValue(decimal: currentDecimal * 16 + 3)
                case "4H":
                    if (currentDecimal > (Int64.max - 4) / 16) { break }
                    currentNumber.setValue(decimal: currentDecimal * 16 + 4)
                case "5H":
                    if (currentDecimal > (Int64.max - 5) / 16) { break }
                    currentNumber.setValue(decimal: currentDecimal * 16 + 5)
                case "6H":
                    if (currentDecimal > (Int64.max - 6) / 16) { break }
                    currentNumber.setValue(decimal: currentDecimal * 16 + 6)
                case "7H":
                    if (currentDecimal > (Int64.max - 7) / 16) { break }
                    currentNumber.setValue(decimal: currentDecimal * 16 + 7)
                case "8H":
                    if (currentDecimal > (Int64.max - 8) / 16) { break }
                    currentNumber.setValue(decimal: currentDecimal * 16 + 8)
                case "9H":
                    if (currentDecimal > (Int64.max - 9) / 16) { break }
                    currentNumber.setValue(decimal: currentDecimal * 16 + 9)
                case "AH":
                    if (currentDecimal > (Int64.max - 10) / 16) { break }
                    currentNumber.setValue(decimal: currentDecimal * 16 + 10)
                case "BH":
                    if (currentDecimal > (Int64.max - 11) / 16) { break }
                    currentNumber.setValue(decimal: currentDecimal * 16 + 11)
                case "CH":
                    if (currentDecimal > (Int64.max - 12) / 16) { break }
                    currentNumber.setValue(decimal: currentDecimal * 16 + 12)
                case "DH":
                    if (currentDecimal > (Int64.max - 13) / 16) { break }
                    currentNumber.setValue(decimal: currentDecimal * 16 + 13)
                case "EH":
                    if (currentDecimal > (Int64.max - 14) / 16) { break }
                    currentNumber.setValue(decimal: currentDecimal * 16 + 14)
                case "FH":
                    if (currentDecimal > (Int64.max - 15) / 16) { break }
                    currentNumber.setValue(decimal: currentDecimal * 16 + 15)
                case "0H":
                    if (currentDecimal > (Int64.max) / 16) { break }
                    currentNumber.setValue(decimal: currentDecimal * 16)
                case "deleteH":
                    currentNumber.setValue(decimal: currentDecimal / 16)
                
                default:
                    break
            }
            
            updateDisplay()
            
        }
    }
    
    func updateDisplay() {
        binary.text = currentNumber.binary
        octal.text = String(currentNumber.octal)
        decimal.text = String(currentNumber.decimal)
        hexadecimal.text = String(currentNumber.hexadecimal)
    }
    
    
    
}
