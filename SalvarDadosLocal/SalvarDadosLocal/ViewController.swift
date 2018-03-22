//
//  ViewController.swift
//  SalvarDadosLocal
//
//  Created by Anderson Altissimo on 2/27/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        UserDefaults.standard.set("blue", forKey: "backgroundColor");
        let texto = UserDefaults.standard.object(forKey: "backgroundColor")
        
        let comida:[String] = ["Arroz", "Feijao", "Carne"]
        UserDefaults.standard.set(comida, forKey: "foods")
        let comidas = UserDefaults.standard.object(forKey: "foods")
        
        UserDefaults.standard.removeObject(forKey: "backgroundColor")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

