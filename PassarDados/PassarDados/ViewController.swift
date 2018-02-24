//
//  ViewController.swift
//  PassarDados
//
//  Created by Anderson Altissimo on 2/21/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var edValue: UITextField!
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "enviarDados" {
            let viewControlDestino = segue.destination as! DetalhesViewControler
            viewControlDestino.txtRecibido = edValue.text!
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


}

