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

    private func initDelegates(){
        celsiusTextField.delegate = self
        fehrenheitTextField.delegate = self
        kelvinTextField.delegate = self
    }
    
    private func clearTextFields(){
        celsiusTextField.text = ""
        fehrenheitTextField.text = ""
        kelvinTextField.text = ""
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
    
}
