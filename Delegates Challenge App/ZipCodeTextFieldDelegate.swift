//
//  ZipCodeTextFieldDelegate.swift
//  Delegates Challenge App
//
//  Created by Ruslan Ismayilov on 3/19/21.
//

import Foundation
import UIKit

class ZipCodeTextFieldDelegate : NSObject, UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        var newtext = textField.text! as NSString
        newtext.replacingCharacters(in: range, with: string)
        return newtext.length <= 5
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}

