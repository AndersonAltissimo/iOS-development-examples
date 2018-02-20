//
//  ViewController.swift
//  FrasedoDia
//
//  Created by Anderson Altissimo on 1/27/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblFrase: UILabel!
    
    @IBAction func bltGerarFrase(_ sender: Any) {
    
        var frases: [String] = []
        frases.append("Meu Pau te ama")
        frases.append("Eu Gosto de voce")
        frases.append("A Vida é como alface")
        frases.append("Nao to inspirado hoje")
    
        lblFrase.text = frases[Int(arc4random_uniform(UInt32(frases.count)))]
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

