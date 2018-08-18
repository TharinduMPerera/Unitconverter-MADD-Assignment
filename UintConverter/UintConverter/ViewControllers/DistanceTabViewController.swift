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
        metreTextField.clear()
        footTextfield.clear()
        yardTextField.clear()
        kmTextField.clear()
        mileTextField.clear()
    }
    
    private func setMetreText(_ value:Any){
        metreTextField.setText(value)
    }
    
    private func setFootText(_ value:Any){
        footTextfield.setText(value)
    }
    
    private func setYardText(_ value:Any){
        yardTextField.setText(value)
    }
    
    private func setKmText(_ value:Any){
        kmTextField.setText(value)
    }
    
    private func setMileText(_ value:Any){
        mileTextField.setText(value)
    }
    
    //MARK: UITextField Editing Changed Events
    
    @IBAction func onMetreValueChanged(_ sender: UITextField) {
        if let metreValue = Double(metreTextField.text!) {
            setFootText(DistanceUtil.metreToFoot(metreValue))
            setYardText(DistanceUtil.metreToYard(metreValue))
            setKmText(DistanceUtil.metreToKilometre(metreValue))
            setMileText(DistanceUtil.metreToMile(metreValue))
        } else {
            clearTextFields()
        }
    }
    
    @IBAction func onFootValueChanged(_ sender: UITextField) {
        if let footValue = Double(footTextfield.text!) {
            setMetreText(DistanceUtil.footToMetre(footValue))
            setYardText(DistanceUtil.footToYard(footValue))
            setKmText(DistanceUtil.footToKilometre(footValue))
            setMileText(DistanceUtil.footToMile(footValue))
        } else {
            clearTextFields()
        }
    }
    
    @IBAction func onYardValueChanged(_ sender: UITextField) {
        if let yardValue = Double(yardTextField.text!) {
            setMetreText(DistanceUtil.yardToMetre(yardValue))
            setFootText(DistanceUtil.yardToFoot(yardValue))
            setKmText(DistanceUtil.yardToKilometre(yardValue))
            setMileText(DistanceUtil.yardToMile(yardValue))
        } else {
            clearTextFields()
        }
    }
    
    @IBAction func onKmValueChanged(_ sender: UITextField) {
        if let kmValue = Double(kmTextField.text!) {
            setMetreText(DistanceUtil.kilometreToMetre(kmValue))
            setFootText(DistanceUtil.kilometreToFoot(kmValue))
            setYardText(DistanceUtil.kilometreToYard(kmValue))
            setMileText(DistanceUtil.kilometreToMile(kmValue))
        } else {
            clearTextFields()
        }
    }
    
    @IBAction func onMileValueChanged(_ sender: UITextField) {
        if let mileValue = Double(mileTextField.text!) {
            setMetreText(DistanceUtil.mileToMetre(mileValue))
            setFootText(DistanceUtil.mileToFoot(mileValue))
            setYardText(DistanceUtil.mileToYard(mileValue))
            setKmText(DistanceUtil.metreToKilometre(mileValue))
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

