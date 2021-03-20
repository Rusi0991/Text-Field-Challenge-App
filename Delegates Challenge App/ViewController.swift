//
//  ViewController.swift
//  Delegates Challenge App
//
//  Created by Ruslan Ismayilov on 3/19/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    let zipCodeDelegate = ZipCodeTextFieldDelegate()
    let cashDelegate = CashTextFieldDelegate()
    
    // MARK: Outlets
    @IBOutlet weak var zipTextField: UITextField!
    @IBOutlet weak var dollarTextField: UITextField!
    @IBOutlet weak var lockableTextField: UITextField!
    @IBOutlet weak var editingSwitch: UISwitch!
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        self.zipTextField.delegate = self.zipCodeDelegate
        self.dollarTextField.delegate =  self.cashDelegate
        lockableTextField.delegate = self
    }
    // MARK: Text Field Delegate
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return editingSwitch.isOn
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // MARK: Actions
    @IBAction func toggleTheTextEditor(_ sender: Any) {
        if !(sender as! UISwitch).isOn {
            lockableTextField.resignFirstResponder()
        }
        
    }
    
}

