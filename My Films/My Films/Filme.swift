//
//  Filme.swift
//  My Films
//
//  Created by Anderson Altissimo on 2/26/18.
//  Copyright © 2018 Anderson Altissimo. All rights reserved.
//

import UIKit

class Filme {
    
    var titulo: String!;
    var descricao: String!;
    var imagem: UIImage!;
    
    init(titulo: String, descricao:String, imagem: UIImage) {
        self.titulo = titulo
        self.descricao = descricao
        self.imagem = imagem
    }
}
