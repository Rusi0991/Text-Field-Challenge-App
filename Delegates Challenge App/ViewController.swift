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
    }
    
    
    
    
}

