struct Livro{
    
    var nome: String
    var autor: String
    var editora: String
    var genero: String
    var numeroDePaginas: Int
    var edicao: Int
    
}

let meuLivroFavorito = Livro(nome: "After", autor: "Anna Todd", editora: "Paralelo", genero: "Romance", numeroDePaginas: -1, edicao: -1)

// colocar ? serve para por o valor ou nada
//variaveis opcionais podem receber um valor especial para indicar "nao existe": nil

enum EstadoCivil{
    case casado
    case solteiro
    case naoInformado
    
}
struct Pessoa{
    
    var cpf: String? = "650"
    var estadoCivil: EstadoCivil? = .casado
    
}

//Tipo de x e de y é um double opcional
//nunca pode fazer operacoes matematicas de opcional com opcional a menos que tu coloque a exclamacao
// usar o " ! " se chama forced unwrapping

var x: Double? = 123.10
var y: Double? = 1000.9876

x! + y!

var nome:  String? = "Eliza"

if nome != nil {
    
    "Meu nome é " + nome!

}else{

    "Nao tem nome cadastrado!"
}

