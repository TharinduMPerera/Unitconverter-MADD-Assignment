//
//  DistanceTabViewController.swift
//  UintConverter
//
//  Created by Tharindu Perera on 8/17/18.
//  Copyright © 2018 Tharindu Perera. All rights reserved.
//

import UIKit

class DistanceTabViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var metreTextField: UITextField!
    @IBOutlet weak var footTextfield: UITextField!
    @IBOutlet weak var yardTextField: UITextField!
    @IBOutlet weak var kmTextField: UITextField!
    @IBOutlet weak var mileTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        self.initDelegates()
    }
    
    private func initDelegates() {
        metreTextField.delegate = self
        footTextfield.delegate = self
        yardTextField.delegate = self
        kmTextField.delegate = self
        mileTextField.delegate = self
    }
    
    private func clearTextFields() {
        metreTextField.text = ""
        footTextfield.text = ""
        yardTextField.text = ""
        kmTextField.text = ""
        mileTextField.text = ""
    }
    
    private func setMetreText(_ value:Any){
        metreTextField.text = "\(value)"
    }
    
    private func setFootText(_ value:Any){
        footTextfield.text = "\(value)"
    }
    
    private func setYardText(_ value:Any){
        yardTextField.text = "\(value)"
    }
    
    private func setKmText(_ value:Any){
        kmTextField.text = "\(value)"
    }
    
    private func setMileText(_ value:Any){
        mileTextField.text = "\(value)"
    }
    
    //MARK: UITextField Editing Changed Events
    
    @IBAction func onMetreValueChanged(_ sender: UITextField) {
    }
    
    @IBAction func onFootValueChanged(_ sender: UITextField) {
    }
    
    @IBAction func onYardValueChanged(_ sender: UITextField) {
    }
    
    @IBAction func onKmValueChanged(_ sender: UITextField) {
    }
    
    @IBAction func onMileValueChanged(_ sender: UITextField) {
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

