//
//  ViewController.swift
//  Abastecimento
//
//  Created by Anderson Altissimo on 2/8/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var edPriceAlcool: UITextField!
    @IBOutlet var edPriceGas: UITextField!
    @IBOutlet var lblResult: UILabel!
    
    @IBAction func btnCalc(sender: AnyObject) {
        if let priceAlcool = edPriceAlcool.text {
            if let priceGas = edPriceGas.text {
            
                let isValid = self.validateFields(priceAlcool: priceAlcool, priceGas: priceGas)
                
                if isValid {
                    self.calculateBetterOption(alcoolPrice: priceAlcool, gasPrice: priceGas)
                } else {
                    lblResult.text = "Digite os preços para calcular !"
                }
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func validateFields(priceAlcool: String, priceGas:String) -> Bool {
        var allCorrect = true
    
        if priceAlcool.isEmpty {
            allCorrect = false
        } else if priceGas.isEmpty {
            allCorrect = false
        }
        
        return allCorrect
    }
    
    /* Alcool Price need to be 70% or less of gasoline to be available*/
    
    func calculateBetterOption(alcoolPrice: String, gasPrice: String) {
        if let valueAlcool = Double(alcoolPrice){
            if let valueGas = Double(gasPrice){
                
                let calculateOfBetterOption = valueAlcool/valueGas
                
                if calculateOfBetterOption >= 0.7 {
                    self.lblResult.text = "Melhor utilizar Gasolina"
                } else {
                    self.lblResult.text = "Melhor utilizar Alcool"
                }
            }
        }
    }
}

