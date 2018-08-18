//
//  DistanceTabViewController.swift
//  UintConverter
//
//  Created by Tharindu Perera on 8/17/18.
//  Copyright © 2018 Tharindu Perera. All rights reserved.
//

import UIKit

class DistanceTabViewController: UIViewController {
    
    @IBOutlet weak var metreTextField: UITextField!
    @IBOutlet weak var footTextfield: UITextField!
    @IBOutlet weak var yardTextField: UITextField!
    @IBOutlet weak var kmTextField: UITextField!
    @IBOutlet weak var mileTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }

}
