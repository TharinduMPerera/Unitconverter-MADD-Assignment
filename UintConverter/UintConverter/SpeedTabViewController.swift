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
    @IBOutlet weak var fpsTextField: UITextField!
    @IBOutlet weak var kmph: UITextField!
    @IBOutlet weak var mphTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        self.initDelegates()
    }
    
    private func initDelegates(){
        mpsTextField.delegate = self
        fpsTextField.delegate = self
        kmph.delegate = self
        mphTextField.delegate = self
    }
    
    private func clearTextFields(){
        mpsTextField.text = ""
        fpsTextField.text = ""
        kmph.text = ""
        mphTextField.text = ""
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

}
