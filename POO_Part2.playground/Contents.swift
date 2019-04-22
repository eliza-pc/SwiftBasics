//: Playground - noun: a place where people can play

import UIKit

class Instrumento {
    
//propriedade
    var brand: String
    var tipo: String
    var cor: String
    var preco: Float
    
    
//inicializador
    init(brand: String,tipo: String,cor: String, preco: Float){

        self.brand  = brand
        self.tipo = tipo
        self.cor = cor
        self.preco = preco
        
    }
 
//encapsulamento: seguranca de dados (GET & SET)
    func getBrand() -> String{
        return self.brand
    }
    func setBrand(brand: String){
        self.brand = brand
    }
    
    func getTipo() -> String{
        return self.tipo
    }
    func setTipo(tipo: String){
        self.tipo = tipo
    }
    
    func getCor() -> String{
        return self.cor
    }
    func setCor(cor: String){
        self.cor = cor
    }
    
    func getPreco() -> Float{
        return self.preco
    }
    func setPreco(preco: Float){
        self.preco = preco
    }
    
}

class Piano: Instrumento{
    var hasPedals : Bool
    let whiteKeys = 52
    let blackKeys = 36
    
   init(brand: String,tipo: String,cor: String,preco: Float, hasPedals: Bool) {
    
        self.hasPedals = hasPedals
        super.init(brand: brand, tipo: tipo, cor: cor, preco: preco)
    
    }
    
    func getHasPedals() -> Bool {
        return self.hasPedals
    }
    func getWhiteKeys() -> Int{
        return self.whiteKeys
    }
    func getBlackKeys() -> Int {
        return self.blackKeys
    }
    func setHasPedals(hasPedals: Bool) {
        self.hasPedals = hasPedals
    }
 
}


class Bateria: Instrumento{
    
    //propriedade
   
    var material: String
    var prato: String
    
    //inicializador
    init(brand: String,tipo: String,cor: String,preco: Float,material: String,prato: String){
        
        self.material = material
        self.prato = prato
        super.init(brand: brand, tipo: tipo, cor: cor, preco: preco)
        
    }
    
    //encapsulamento: seguranca de dados (GET & SET)
   
    
    func getMaterial() -> String{
        return self.material
    }
    func setMaterial(material: String){
        self.material = material
    }
    
    func getPrato() -> String{
        return self.prato
    }
    func setPrato(prato: String){
        self.prato = prato
    }
    
}

class Violao {
    
    //propriedade
    var brand: String
    var tipo: String
    
    
    //inicializador
    init(brand: String,tipo: String){
        
        self.brand  = brand
        self.tipo = tipo
        
    }
    
    //encapsulamento: seguranca de dados (GET & SET)
    func getBrand() -> String{
        return self.brand
    }
    func setBrand(brand: String){
        self.brand = brand
    }
    
    func getTipo() -> String{
        return self.tipo
    }
    func setTipo(tipo: String){
        self.tipo = tipo
    }
    
    
}


//
//let instrumento = Instrumento.init(brand: <#T##String#>, tipo: <#T##String#>)
//let piano =


//
//instrumento.setBrand(brand: "Fender")
//instrumento.setTipo(tipo: "Guitarra")
//
//instrumento.setBrand(brand: "Yamarra")
//instrumento.setTipo(tipo: "Violino")
//
//instrumento.setBrand(brand: "Nao Sei")
//instrumento.setTipo(tipo: "Violao")
//
//
