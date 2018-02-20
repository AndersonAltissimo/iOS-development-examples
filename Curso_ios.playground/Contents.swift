//: Playground - noun: a place where people can play

import UIKit

//var str = "Hello, playground"
//var teste = "Anderson"
//
//
//var abc: Int = 123
//var def = 321
//
//print("A minha variavel é: " + String(abc + Int(def)))
//
//var lista = Set<String>()
//
//lista.insert("Pizza")
//lista.insert("Suco")
//lista.insert("Anderson")
//
//var animais = [String: String]()
//
//animais["Anderson"] = "Um pacagaio"
//animais["Patricia"] = "Um peliquito"
//
//print(animais["Anderson"]!)
//
//var month = [Int: String]()
//
//month[1] = "Janeiro"
//month[2] = "Fevereiro"
//month[3] = "Março"
//month[4] = "Abril"
//month[5] = "Maio"
//month[6] = "Junho"
//month[7] = "Julho"
//month[8] = "Agosto"
//month[9] = "Setembro"
//month[10] = "Outubro"
//month[11] = "Novembro"
//month[12] = "Dezembro"
//
//print(month[Int(arc4random_uniform(UInt32(month.count)))])
//
//for var i in 0..<6{
//    print("Numero :" + String(i))
//}
//
//func multiplicar(num1: Int, num2: Int) -> Int{
//    return num1 * num2;
//}
//
//var resultado: Int = 1 + multiplicar(num1: 10, num2: 50)
//
//print(String(resultado))
//
//func calculaIdade(anoNascimento: Int) -> Int {
//    let dia = Date()
//    let ano = Calendar.current.component(.year, from: dia)
//
//    return ano - anoNascimento
//}
//
//print(calculaIdade(anoNascimento: 1994))
//
//class Casa {
//    var cor:String
//
//    init(cor:String) {
//        self.cor = cor
//    }
//
//    public func getCor() -> String{
//        return self.cor
//    }
//}
//
//var casa = Casa(cor: "Amarelo")
//print(casa.getCor())
//
//
//class Cachorro {
//    var nome: String
//    var cor: String
//
//    init(nome:String, cor:String) {
//        self.nome = nome
//        self.cor = cor
//    }
//
//    func correr() -> String {
//        return self.nome + " Correu"
//    }
//
//    func latir() -> String {
//        return self.nome + " Latiu"
//    }
//}
//
//var dog = Cachorro(nome: "Neguina", cor: "Preto")
//print(dog.latir())


class Animal{
    var cor = "Marrom"

    func dormir() -> String {
        return "Dormiu"
    }
}


class Dog: Animal{
    func latir() -> String {
        return "Latir"
    }
}

class Bird: Animal{
    
}

var cachorro = Dog()
cachorro.latir()










