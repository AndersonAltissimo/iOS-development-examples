//
//  ViewController.swift
//  My Films
//
//  Created by Anderson Altissimo on 2/26/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var lista: [Filme] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var filme: Filme
        
        filme = Filme(titulo: "007 - Spectre", descricao: "Filme do James Bond", imagem: #imageLiteral(resourceName: "filme1"))
        lista.append(filme)
        
        filme = Filme(titulo: "Star Wars - Despertar da Força", descricao: "A StarWars Film", imagem:#imageLiteral(resourceName: "filme2"))
        lista.append(filme)
        
        filme = Filme(titulo: "Impacto Mortal", descricao: "Filme ImpactoMortal", imagem:#imageLiteral(resourceName: "filme3"))
        lista.append(filme)
        
        filme = Filme(titulo: "DeadPool", descricao: "A Deadpool Production", imagem: #imageLiteral(resourceName: "filme4"))
        lista.append(filme)
        
        filme = Filme(titulo: "O Regresso", descricao: "Leonardo de Caprio ganhou o Oscar", imagem:#imageLiteral(resourceName: "filme5"))
        lista.append(filme)
        
        filme = Filme(titulo: "A Herdeira", descricao: "Seus pais morreram e ela virou a herdeira", imagem: #imageLiteral(resourceName: "filme6"))
        lista.append(filme)
        
        filme = Filme(titulo: "O Crime não tem limites", descricao: "Filme sobre a vida do Crime", imagem:#imageLiteral(resourceName: "filme7"))
        lista.append(filme)
        
        filme = Filme(titulo: "Regresso do Mal", descricao: "O mal regrediu", imagem: #imageLiteral(resourceName: "filme8"))
        lista.append(filme)
        
        filme = Filme(titulo: "Tarzan", descricao: "Abandonado pelos pais e criado por gorilaz", imagem:#imageLiteral(resourceName: "filme9"))
        lista.append(filme)
        
        filme = Filme(titulo: "HardCore Henry", descricao: "O cara é hardcore", imagem:#imageLiteral(resourceName: "filme10"))
        lista.append(filme)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let filme:Filme = lista[indexPath.row]
        let cellReuse = "CellReuse"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuse, for: indexPath) as! FilmeCell
        
        cell.filmeTituloLabel.text = filme.titulo
        cell.filmeDescricaoLabel.text = filme.descricao
        cell.filmeImageCell.image = filme.imagem
        
        cell.filmeImageCell.layer.cornerRadius = 42
        cell.filmeImageCell.clipsToBounds = true
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "DetalheFilme" {
            
            if let indexPath = tableView.indexPathForSelectedRow {
                let filme = self.lista[indexPath.row]
                
                let viewControl = segue.destination as! DetalhesViewController
                viewControl.filme = filme
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

