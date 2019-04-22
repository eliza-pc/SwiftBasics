
let meuNome: String = "Eliza"
let minhaQualidade: String

//escopo

if meuNome == "CR7"{
    
    minhaQualidade = "Sou Demais"

}else{
    
    minhaQualidade = "Sou Demais"

}

"Olá, meu nome é \(meuNome) e eu \(minhaQualidade)."

let idade = 58

if idade >= 60{
    
    "hello"
    
}else if idade <= 40{
    
    "aaaa"

}else if idade == 10{
    
    "Hello child!"

}

enum EstadoCivil{
    
    case solteiro
    case casado
    case something
    
}

let meuEstadoCivil: EstadoCivil = .casado

switch meuEstadoCivil {
    
case .solteiro:
    
    "aaa"
    
case .casado:
    
    "bb porco forever <3"
    
case .something:
    
    "ccc"
    
}
