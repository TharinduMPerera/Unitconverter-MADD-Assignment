//
//  SpeedTabViewController.swift
//  UintConverter
//
//  Created by Tharindu Perera on 8/17/18.
//  Copyright © 2018 Tharindu Perera. All rights reserved.
//

import UIKit

class SpeedTabViewController: UIViewController {
    
    @IBOutlet weak var mpsTextField: UITextField!
    @IBOutlet weak var fpsTextField: UITextField!
    @IBOutlet weak var kmph: UITextField!
    @IBOutlet weak var mphTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }

}
