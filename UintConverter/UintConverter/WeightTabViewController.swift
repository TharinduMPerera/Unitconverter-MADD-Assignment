//
//  WeightTabViewController.swift
//  UintConverter
//
//  Created by Tharindu Perera on 8/17/18.
//  Copyright © 2018 Tharindu Perera. All rights reserved.
//

import UIKit

class WeightTabViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var gramTextField: UITextField!
    @IBOutlet weak var kgTextField: UITextField!
    @IBOutlet weak var poundTextField: UITextField!
    @IBOutlet weak var ounceTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        self.initDelegates()
    }
    
    private func initDelegates(){
        gramTextField.delegate = self
        kgTextField.delegate = self
        poundTextField.delegate = self
        ounceTextField.delegate = self
    }
    
    private func clearTextFields(){
        gramTextField.text = ""
        kgTextField.text = ""
        poundTextField.text = ""
        ounceTextField.text = ""
    }
    
    //MARK: UITextField Editing Changed Events
    
    @IBAction func onGramValueChanged(_ sender: UITextField) {
    }
    
    @IBAction func onKgValueChanged(_ sender: UITextField) {
    }
    
    @IBAction func onPoundValueChanged(_ sender: UITextField) {
    }
    
    
    @IBAction func onOunceValueChanged(_ sender: Any) {
    }
    
    
    //MARK: UITextFieldDelegate
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        clearTextFields()
    }
    
    
}

