//
//  TemperatureTabViewController.swift
//  UintConverter
//
//  Created by Tharindu Perera on 8/17/18.
//  Copyright © 2018 Tharindu Perera. All rights reserved.
//

import UIKit

class TemperatureTabViewController: UIViewController {
    
    @IBOutlet weak var celsiusTextField: UITextField!
    @IBOutlet weak var fehrenheitTextField: UITextField!
    @IBOutlet weak var kelvinTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }

}
