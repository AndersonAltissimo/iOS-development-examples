//
//  ViewController.swift
//  Sorteio
//
//  Created by Anderson Altissimo on 1/27/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblValor: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    @IBAction func btnGerar(_ sender: Any) {
        let resultado = arc4random_uniform(20)
        lblValor.text = String(resultado)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

