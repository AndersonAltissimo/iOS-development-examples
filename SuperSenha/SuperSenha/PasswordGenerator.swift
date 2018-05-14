//
//  PasswordGenerator.swift
//  SuperSenha
//
//  Created by Anderson Altissimo on 5/13/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import Foundation

class PasswordGenerator {
    var numberOfChars: Int
    var useLowerCase: Bool
    var useUpperCase: Bool
    var useNumbers: Bool
    var useSpecialChars: Bool
    
    var passwords: [String] = []
    
    private let letters = "abcdefghijklmnopqrstuvwxyz";
    private let specialChars = "!@#$%ˆ&*()_-+=~|]}[{':;?/<>.,"
    private let numbers = "0123456789"
    
    init(numberOfChars: Int, useLowerCase: Bool, useUpperCase: Bool, useNumbers: Bool, useSpecialChars: Bool) {
        
        var numChars = min(numberOfChars, 16)
        numChars = max(numChars, 1)
        
        self.numberOfChars = numChars
        self.useLowerCase = useLowerCase
        self.useUpperCase = useUpperCase
        self.useNumbers = useNumbers
        self.useSpecialChars = useSpecialChars
    }
    
    func generate(total: Int) -> [String] {
        passwords.removeAll()
        var universe:String = ""
        
        if useLowerCase {
            universe += letters
        }
        
        if useUpperCase {
            universe += letters.uppercased()
        }
        
        if useNumbers {
            universe += numbers
        }
        
        if useSpecialChars {
            universe += specialChars
        }
        
        let universeArray = Array(universe)
        while passwords.count < total {
            var password = ""
            for _ in 1...numberOfChars {
                let index = Int(arc4random_uniform(UInt32(universeArray.count)))
                password += String(universeArray[index])
            }
        
            passwords.append(password)
        }
        
        return passwords
    }
}
