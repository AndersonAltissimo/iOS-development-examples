//
//  ViewController.swift
//  Alert
//
//  Created by Anderson Altissimo on 2/24/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonShowAlert(_ sender: Any) {
        
        let alert = UIAlertController(title: "Add new Contact", message: "Do you want to add this contact?", preferredStyle: .alert)
        
        let confirmed = UIAlertAction(title: "Confirm", style: .default, handler: nil)
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        
        alert.addAction(confirmed)
        alert.addAction(cancel)
        
        present(alert, animated: true, completion: nil)
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

