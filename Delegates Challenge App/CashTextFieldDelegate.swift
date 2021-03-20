//
//  CashTextFieldDelegate.swift
//  Delegates Challenge App
//
//  Created by Ruslan Ismayilov on 3/19/21.
//

import Foundation
import UIKit


// MARK: - CashTextFieldDelegate: NSObject, UITextFieldDelegate

class CashTextFieldDelegate : NSObject, UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var oldText = textField.text! as NSString
        var newText = oldText.replacingCharacters(in: range, with: string)
        var newTextString = String(newText)
        
        let digits = CharacterSet.decimalDigits
        var digitText = ""
        for c in (newTextString.unicodeScalars) {
            if digits.contains(UnicodeScalar(c.value)!) {
                digitText.append("\(c)")
                
        }
        }
        // Format the new string
        if let numOfPennies = Int(digitText){
            newText = "$" + dollarStringFromInt(value: numOfPennies) + "." + centStringFromInt(value: numOfPennies)}
        else{
            newText = "$0.00"
        }
        textField.text = newText
        return false
}
    func textFieldDidBeginEditing(_ textField: UITextField) {
        if textField.text!.isEmpty {
            textField.text = "$0.00"
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    func dollarStringFromInt(value : Int) ->String{
        return String(value/100)
    }
    func centStringFromInt(value: Int) ->String{
        let cents = value % 100
        var centString = String(cents)
        if cents < 10{
            centString = "0" + centString
        }
        return centString
    }
    
}
       
