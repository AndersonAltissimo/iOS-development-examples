//
//  ViewController.swift
//  Cara ou Coroa
//
//  Created by Anderson Altissimo on 2/21/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "jogarMoeda" {
            let viewControllerDestino = segue.destination as! ResultadoViewController
            
            viewControllerDestino.randomNumber = Int(arc4random_uniform(2));
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

