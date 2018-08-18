//
//  SpeedTabViewController.swift
//  UintConverter
//
//  Created by Tharindu Perera on 8/17/18.
//  Copyright © 2018 Tharindu Perera. All rights reserved.
//

import UIKit

class SpeedTabViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var mpsTextField: UITextField!
    @IBOutlet weak var fpmTextField: UITextField!
    @IBOutlet weak var kmph: UITextField!
    @IBOutlet weak var mphTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        self.initDelegates()
    }
    
    private func initDelegates() {
        mpsTextField.delegate = self
        fpmTextField.delegate = self
        kmph.delegate = self
        mphTextField.delegate = self
    }
    
    private func clearTextFields() {
        mpsTextField.clear()
        fpmTextField.clear()
        kmph.clear()
        mphTextField.clear()
    }
    
    private func setMpsText(_ value:Any){
        mpsTextField.setText(value)
    }
    
    private func setFpsText(_ value:Any){
        fpmTextField.setText(value)
    }
    
    private func setKmphText(_ value:Any){
        kmph.setText(value)
    }
    
    private func setMphText(_ value:Any){
        mphTextField.text = "\(value)"
    }
    
    //MARK: UITextField Editing Changed Events
    
    @IBAction func onMpsValueChanged(_ sender: UITextField) {
    }
    
    @IBAction func onFpmValueChanged(_ sender: UITextField) {
    }
    
    @IBAction func onKmphValueChanged(_ sender: UITextField) {
    }
    
    @IBAction func onMphValueChanged(_ sender: UITextField) {
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

