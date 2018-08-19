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
    @IBOutlet weak var kmphTextField: UITextField!
    @IBOutlet weak var mphTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        self.initDelegates()
    }
    
    private func initDelegates() {
        mpsTextField.delegate = self
        fpmTextField.delegate = self
        kmphTextField.delegate = self
        mphTextField.delegate = self
    }
    
    private func clearTextFields() {
        mpsTextField.clear()
        fpmTextField.clear()
        kmphTextField.clear()
        mphTextField.clear()
    }
    
    private func setMpsText(_ value:Any){
        mpsTextField.setText(value)
    }
    
    private func setFpmText(_ value:Any){
        fpmTextField.setText(value)
    }
    
    private func setKmphText(_ value:Any){
        kmphTextField.setText(value)
    }
    
    private func setMphText(_ value:Any){
        mphTextField.setText(value)
    }
    
    //MARK: UITextField Editing Changed Events
    
    @IBAction func onMpsValueChanged(_ sender: UITextField) {
        if let mpsValue = Double(mpsTextField.text!) {
            setFpmText(SpeedUtil.mpsToFpm(mpsValue))
            setKmphText(SpeedUtil.mpsToKmph(mpsValue))
            setMphText(SpeedUtil.mpsToMph(mpsValue))
        } else {
            clearTextFields()
        }
    }
    
    @IBAction func onFpmValueChanged(_ sender: UITextField) {
        if let fmpValue = Double(fpmTextField.text!) {
            setMpsText(SpeedUtil.fpmToMps(fmpValue))
            setKmphText(SpeedUtil.fpmToKmph(fmpValue))
            setMphText(SpeedUtil.fpmToMph(fmpValue))
        } else {
            clearTextFields()
        }
    }
    
    @IBAction func onKmphValueChanged(_ sender: UITextField) {
        if let kmphValue = Double(kmphTextField.text!) {
            setMpsText(SpeedUtil.kmphToMps(kmphValue))
            setFpmText(SpeedUtil.kmphToFpm(kmphValue))
            setMphText(SpeedUtil.kmphToMph(kmphValue))
        } else {
            clearTextFields()
        }
    }
    
    @IBAction func onMphValueChanged(_ sender: UITextField) {
        if let mphValue = Double(mphTextField.text!) {
            setMpsText(SpeedUtil.mphToMps(mphValue))
            setFpmText(SpeedUtil.mphToFpm(mphValue))
            setKmphText(SpeedUtil.mphToKmph(mphValue))
        } else {
            clearTextFields()
        }
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

