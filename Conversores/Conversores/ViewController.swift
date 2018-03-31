//
//  ViewController.swift
//  Conversores
//
//  Created by Anderson Altissimo on 3/22/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfValue: UITextField!

    @IBOutlet weak var btInit1: UIButton!
    @IBOutlet weak var btInit2: UIButton!
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var lbResultUnit: UILabel!
    @IBOutlet weak var lbUnit: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showNext(_ sender: UIButton) {
        switch lbUnit.text! {
            case "Temperatura":
                lbUnit.text = "Peso"
                btInit1.setTitle("Kilograma", for: .normal)
                btInit2.setTitle("Libra", for: .normal)
            
            case "Peso":
                lbUnit.text = "Moeda"
                btInit1.setTitle("Dolár", for: .normal)
                btInit2.setTitle("Real", for: .normal)
            
            case "Moeda":
                lbUnit.text = "Distância"
                btInit1.setTitle("Metro", for: .normal)
                btInit2.setTitle("Kilômetros", for: .normal)
            
            default:
                lbUnit.text = "Temperatura"
                btInit1.setTitle("Celsius", for: .normal)
                btInit2.setTitle("Fahrenheit", for: .normal)
        }
        
        convert(nil)
    }

    @IBAction func convert(_ sender: UIButton?) {
        if let sender = sender {
            if sender == btInit1 {
                btInit2.alpha = 0.5
            } else {
                btInit1.alpha = 0.5
            }
            sender.alpha = 1.0
        }
        
        switch lbUnit.text! {
            case "Temperatura":
                calcTemperature()
            case "Peso":
                calcWeight()
            case "Moeda":
                calcCurrency()
            default:
                calcDistance()
        }
        
        view.endEditing(true)
        let result = Double(lbResult.text!)!
        lbResult.text = String(format: "%.2f", result)
    }
    
    private func calcTemperature() {
        guard let temperature = Double(tfValue.text!) else {
            return
        }
        
        if btInit1.alpha == 1.0 {
            lbResultUnit.text = "Fahrenheit"
            lbResult.text = String(temperature * 1.8 + 32.0)
        } else {
            lbResultUnit.text = "Celsius"
            lbResult.text = String((temperature - 32.0) / 1.8)
        }
    }
    
    private func calcWeight() {
        guard let weight = Double(tfValue.text!) else {
            return
        }
        
        if btInit1.alpha == 1.0 {
            lbResultUnit.text = "Libra"
            lbResult.text = String(weight / 2.2046)
        } else {
            lbResultUnit.text = "Kilograma"
            lbResult.text = String(weight * 2.2046)
        }
    }
    
    private func calcCurrency() {
        guard let currency = Double(tfValue.text!) else {
            return
        }
        
        if btInit1.alpha == 1.0 {
            lbResultUnit.text = "Dólar"
            lbResult.text = String(currency / 3.5)
        } else {
            lbResultUnit.text = "Real"
            lbResult.text = String(currency * 3.5)
        }
    }
    
    private func calcDistance() {
        guard let distance = Double(tfValue.text!) else {
            return
        }
        
        if btInit1.alpha == 1.0 {
            lbResultUnit.text = "Kilômetros"
            lbResult.text = String(distance / 1000)
        } else {
            lbResultUnit.text = "Metro"
            lbResult.text = String(distance * 1000)
        }
    }
}

