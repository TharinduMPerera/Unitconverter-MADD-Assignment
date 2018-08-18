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
    
    private func initDelegates(){
        metreTextField.delegate = self
        footTextfield.delegate = self
        yardTextField.delegate = self
        kmTextField.delegate = self
        mileTextField.delegate = self
    }
    
    private func clearTextFields(){
        metreTextField.text = ""
        footTextfield.text = ""
        yardTextField.text = ""
        kmTextField.text = ""
        mileTextField.text = ""
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

}
