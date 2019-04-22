import UIKit

//Array - Lista de Dados

let lancamentoDeDados: [Int] = [5, 2, 3, 1, 1, 6, 4, 5, 2, 5, 1, 2, 2, 4, 6]
let alturaDasPessoas: [Double] = [1.85, 1.76, 1.48, 1.92, 1.65, 1.98,1.91, 1.88, 1.70]

//Untiliza-se o .count para contar quantos elementos o array possui

"Eu lancei os dados \(lancamentoDeDados.count) vezes."
"Eu medi a Altura de \(alturaDasPessoas.count)  pessoas."

enum LadoDaMoeda{
    
    case cara
    case coroa
    
}

let lancamentos: [LadoDaMoeda] = [.coroa, .cara, .cara, .coroa, .coroa, .cara]

struct Livro{
    
    var nome: String
    var autor: String
    var editora: String
    var genero: String
    var numeroDePaginas: Int
    var edicao: Int
    
}


let livrosQueLi: [Livro] = [
    Livro(nome: "After", autor: "Anna Todd", editora: "Paralelo", genero: "Romance", numeroDePaginas: -1, edicao: -1),
//    Livro(nome: "aa", autor: "a", editora: "a", genero: "a", numeroDePaginas: -1, edicao: -1),
//    Livro(nome: "b", autor: "b", editora: "b", genero: "b", numeroDePaginas: -1, edicao: -1)

]

livrosQueLi.count

//Consulta de elementos no array

livrosQueLi[0]

//consulta de partes especificas do array

livrosQueLi[0].autor

if lancamentoDeDados[0] >= 4 {
    
    "O primeiro lancamento foi um numero alto."
}else{
    
    "Voce is um cocozao"
    
}

//Ultimo elemento

if livrosQueLi.count > 0{
    
    "E o último elemento escrito por \(livrosQueLi[livrosQueLi.count-1].autor)."

}else{
    
    "Nao tem livros na sua estante!"
    
}
