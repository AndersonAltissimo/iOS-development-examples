//
//  DetalhesViewController.swift
//  My Films
//
//  Created by Anderson Altissimo on 2/26/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {
    
    var filme: Filme!
    
    @IBOutlet weak var detalheImagemFilme: UIImageView!
    @IBOutlet weak var detalheTituloFilme: UILabel!
    @IBOutlet weak var detalheDescricaoFilme: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detalheTituloFilme.text = filme.titulo
        detalheDescricaoFilme.text = filme.descricao
        detalheImagemFilme.image = filme.imagem
    }
}
