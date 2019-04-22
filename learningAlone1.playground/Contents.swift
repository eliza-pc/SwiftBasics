
import UIKit


enum Area{
    
    case Developer
    case Design
    case Full

}

struct Aluno{
    
    var nome: String
    var cpf: String
    var email: String
    var numeroDeTelefone: String
    var area: Area
    var idade: Int
    
}

struct Professor{
    
    var nome: String
    var area: Area
    var idade: Int
    
}

struct Academy{
    
    var aluno: Aluno
    var nomeDoWifi: String
    var professor: Professor
    let duracao: String
    let totalDeAlunos: Int
    
}

let academy = Academy(aluno: Aluno(nome: "Eliza", cpf: "041582782-52", email: "elizaportocarvalho0@gmail.com", numeroDeTelefone: "(55) 092 99178-1200", area: .Developer, idade: 19), nomeDoWifi: "Bepid", professor: Professor(nome: "Vilar", area: .Full, idade: 15), duracao: "2 anos", totalDeAlunos: 27)

print(academy)



