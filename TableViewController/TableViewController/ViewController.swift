//
//  ViewController.swift
//  TableViewController
//
//  Created by Anderson Altissimo on 2/24/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var dados: [String] = ["Lasanha", "Pizza", "Torta"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dados.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let CellReusable = "CellReusable"
        let cell = tableView.dequeueReusableCell(withIdentifier: CellReusable, for: indexPath)
        cell.textLabel?.text = dados[indexPath.row]
    
        return cell
    }
}

