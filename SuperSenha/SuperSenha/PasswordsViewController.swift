//
//  PasswordsViewController.swift
//  SuperSenha
//
//  Created by Anderson Altissimo on 5/13/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import UIKit

class PasswordsViewController: UIViewController {

    @IBOutlet weak var tvPasswords: UITextView!
    
    var numberOfChars: Int = 10;
    var numberOfPasswords: Int = 1;
    var useLowerCase: Bool!;
    var useUpperCase: Bool!;
    var useNumbers: Bool!;
    var useSpecialChars: Bool!;
    
    var pwdGenerator: PasswordGenerator!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Total de senhas: \(numberOfPasswords)"
        
        pwdGenerator = PasswordGenerator(numberOfChars: numberOfChars, useLowerCase: useLowerCase, useUpperCase: useUpperCase, useNumbers: useNumbers, useSpecialChars: useSpecialChars);
    
        generatePasswords()
    }
    
    func generatePasswords() {
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        tvPasswords.text = ""
        
        let passwords = pwdGenerator.generate(total: numberOfPasswords)
        for pwd in passwords {
            tvPasswords.text.append(pwd + "\n\n")
        }
    }
    
    @IBAction func generatePassword(_ sender: Any) {
        generatePasswords()
    }
}
