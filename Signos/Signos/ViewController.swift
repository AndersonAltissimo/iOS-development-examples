//
//  ViewController.swift
//  Signos
//
//  Created by Anderson Altissimo on 2/24/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    let signos: [String] = ["Áries", "Touro", "Gêmeos", "Câncer", "Leão", "Virgem", "Libra", "Escorpião", "Sagitário", "Capricórnio", "Aquário", "Peixes"]
    
    var significados: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        significados = populateSignificadosSignos(signos: signos)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellReuse", for: indexPath)
        
        cell.textLabel?.text = signos[indexPath.row]
        return cell
    }
   
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alert = UIAlertController(title: "Significado do Signo", message: significados[indexPath.row], preferredStyle: .alert)
        let actionConfirmed = UIAlertAction(title: "Ok", style: .default, handler: nil)
        
        alert.addAction(actionConfirmed)
        
        present(alert, animated: true, completion: nil)
    }
    
    func populateSignificadosSignos(signos: [String]) -> [String] {

        var significados: [String] = []
        for signo in signos {
            significados.append("Significado do signo de " + signo)
        }
        return significados
    }
}
