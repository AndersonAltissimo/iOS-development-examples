//
//  ViewController.swift
//  SuperSenha
//
//  Created by Anderson Altissimo on 4/27/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfNumberOfChars: UITextField!
    @IBOutlet weak var swLowerCase: UISwitch!
    @IBOutlet weak var swUpperCase: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swSpecialChars: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let pwdViewController = segue.destination as! PasswordsViewController
        
        if let numberOfPasswords = Int(tfTotalPasswords.text!) {
            pwdViewController.numberOfPasswords = numberOfPasswords
        }
        
        if let numberOfChars = Int(tfNumberOfChars.text!) {
            pwdViewController.numberOfChars = numberOfChars
        }
    
        pwdViewController.useLowerCase = swLowerCase.isOn
        pwdViewController.useUpperCase = swUpperCase.isOn
        pwdViewController.useNumbers = swNumbers.isOn
        pwdViewController.useSpecialChars = swSpecialChars.isOn
        
        view.endEditing(true)
    }
}

