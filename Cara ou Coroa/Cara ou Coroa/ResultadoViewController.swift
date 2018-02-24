//
//  ResultadoViewController.swift
//  Cara ou Coroa
//
//  Created by Anderson Altissimo on 2/21/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import UIKit

class ResultadoViewController: UIViewController {

    var randomNumber: Int!
    
    @IBOutlet weak var imageResult: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        if randomNumber == 0 {
            imageResult.image = #imageLiteral(resourceName: "moeda_cara")
        } else {
            imageResult.image = #imageLiteral(resourceName: "moeda_coroa")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
