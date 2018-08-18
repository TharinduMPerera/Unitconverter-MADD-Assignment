//
//  TemperatureTabViewController.swift
//  UintConverter
//
//  Created by Tharindu Perera on 8/17/18.
//  Copyright © 2018 Tharindu Perera. All rights reserved.
//

import UIKit

class TemperatureTabViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var celsiusTextField: UITextField!
    @IBOutlet weak var fehrenheitTextField: UITextField!
    @IBOutlet weak var kelvinTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        self.initDelegates()
    }
    
    private func initDelegates() {
        celsiusTextField.delegate = self
        fehrenheitTextField.delegate = self
        kelvinTextField.delegate = self
    }
    
    private func clearTextFields() {
        celsiusTextField.text = ""
        fehrenheitTextField.text = ""
        kelvinTextField.text = ""
    }
    
    private func setCelsiusText(_ value:Any){
        celsiusTextField.text = "\(value)"
    }
    
    private func setFehrenheitText(_ value:Any){
        fehrenheitTextField.text = "\(value)"
    }
    
    private func setKelvinText(_ value:Any){
        kelvinTextField.text = "\(value)"
    }
    
    //MARK: UITextField Editing Changed Events
    
    @IBAction func onCelsiusValueChanged(_ sender: UITextField) {
    }
    
    @IBAction func onFehrenheitValueChanged(_ sender: UITextField) {
    }
    
    @IBAction func onKelvinValueChanged(_ sender: UITextField) {
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        clearTextFields()
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let maxLength = Const.inputDigitLimit
        let currentString: NSString = textField.text! as NSString
        let newString: NSString =
            currentString.replacingCharacters(in: range, with: string) as NSString
        return newString.length <= maxLength
    }
    
}

