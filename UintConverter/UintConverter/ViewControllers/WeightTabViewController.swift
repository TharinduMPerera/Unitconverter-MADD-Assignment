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
    
    private func initDelegates() {
        gramTextField.delegate = self
        kgTextField.delegate = self
        poundTextField.delegate = self
        ounceTextField.delegate = self
    }
    
    private func clearTextFields() {
        gramTextField.text = ""
        kgTextField.text = ""
        poundTextField.text = ""
        ounceTextField.text = ""
    }
    
    private func setGramText(_ value:Any){
        gramTextField.text = "\(value)"
    }
    
    private func setKgText(_ value:Any){
        kgTextField.text = "\(value)"
    }
    
    private func setPoundText(_ value:Any){
        poundTextField.text = "\(value)"
    }
    
    private func setOunceText(_ value:Any){
        ounceTextField.text = "\(value)"
    }
    
    //MARK: UITextField Editing Changed Events
    
    @IBAction func onGramValueChanged(_ sender: UITextField) {
        if let gramValue = Double(gramTextField.text!) {
            setKgText(WeightUtil.gramToKilogram(gramValue))
            setPoundText(WeightUtil.gramToPound(gramValue))
            setOunceText(WeightUtil.gramToOunce(gramValue))
        } else {
            clearTextFields()
        }
    }
    
    @IBAction func onKgValueChanged(_ sender: UITextField) {
        if let kgValue = Double(kgTextField.text!) {
            setGramText(WeightUtil.kilogramToGram(kgValue))
            setPoundText(WeightUtil.kilogramToPound(kgValue))
            setOunceText(WeightUtil.kilogramToOunce(kgValue))
        } else {
            clearTextFields()
        }
    }
    
    @IBAction func onPoundValueChanged(_ sender: UITextField) {
        if let poundValue = Double(poundTextField.text!) {
            setGramText(WeightUtil.poundToGram(poundValue))
            setKgText(WeightUtil.poundToKilogram(poundValue))
            setOunceText(WeightUtil.poundToOunce(poundValue))
        } else {
            clearTextFields()
        }
    }
    
    @IBAction func onOunceValueChanged(_ sender: UITextField) {
        if let ounceValue = Double(ounceTextField.text!) {
            setGramText(WeightUtil.ounceToGram(ounceValue))
            setKgText(WeightUtil.ounceToKilogram(ounceValue))
            setPoundText(WeightUtil.ounceToPound(ounceValue))
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



