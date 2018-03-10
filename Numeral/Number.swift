//
//  Number.swift
//  Number Converter
//
//  Created by serfusE on 14/12/2017.
//  Copyright © 2017 Dean. All rights reserved.
//

import Foundation

class Number {
    
    var binary: String = "0"
    var octal: String = "0"
    var decimal: Int64 = 0
    var hexadecimal: String = "0"
    
    init() {
        self.setValue(decimal: 0)
    }
    
    func setValue(decimal: Int64) {
        if (!(decimal < Int64.max)) { return }
        self.binary = decimalToBinary(decimal)
        self.octal = decimalToOctal(decimal)
        self.decimal = decimal
        self.hexadecimal = decimalToHexadecimal(decimal)
    }
    
    func decimalToBinary(_ decimal: Int64) -> String {
        if (decimal == 0) { return "0" }
        var result = ""
        var temp = decimal
        while (temp != 0) {
            result = String(temp % 2) + result
            temp /= 2
        }
        
        var separated = ""
        var resultChars = Array(result.characters)
        var position = (resultChars.count % 4)
        for i in 0..<resultChars.count {
            if (i == position) {
                separated.append(" ")
                position += 4
            }
            separated.append(resultChars[i])
        }
        return separated
    }
    
    func decimalToOctal(_ decimal: Int64) -> String {
        if (decimal == 0) { return "0" }
        var result = ""
        var temp = decimal
        while (temp != 0) {
            result = String(temp % 8) + result
            temp /= 8
        }
        return result
    }
    
    func decimalToHexadecimal(_ decimal: Int64) -> String {
        if (decimal == 0) { return "0x0" }
        var result = ""
        var temp = decimal
        while (temp != 0) {
            let ascii = Int((temp % 16) - 10 + 65)
            result = temp % 16 < 10 ? String(temp % 16) + result : String(UnicodeScalar(UInt8(ascii))) + result
            temp /= 16
        }
        return "0x" + result
    }
    
    
}
