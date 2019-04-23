
let meuNome: String = "Eliza"
let minhaQualidade: String

//escopo

if meuNome == "C3PO"{
    
    minhaQualidade = "Being Awesome"

}else{
    
    minhaQualidade = "Not Being Awesome"

}

//Interpolação de strings

"Olá, meu nome é \(meuNome) e eu \(minhaQualidade)."

let idade = 58

if idade >= 60{
    
    "Hello old human!"
    
}else if idade <= 40{
    
    "Hello bro!"

}else if idade == 10{
    
    "Hello baby human!"

}

enum EstadoCivil{
    
    case solteiro
    case casado
    case something
    
}

let meuEstadoCivil: EstadoCivil = .casado

switch meuEstadoCivil {
    
case .solteiro:
    
    "You are young, wild and free human!"
    
case .casado:
    
    "Embrace each other company please!"
    
case .something:
    
    "Some cool phrase!"
    
}
