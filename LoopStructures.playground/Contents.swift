//Estruturas de repeticao

struct Livro{
    
    let titulo: String
    let autor: String
    let numeroDePaginas: Int?
    let anoDePublicacao: Int?
    
}

let livrosQueLi: [Livro] = [
    
    Livro(titulo: "a", autor: "a", numeroDePaginas: 1, anoDePublicacao: 2008),
    Livro(titulo: "b", autor: "b", numeroDePaginas: 2, anoDePublicacao: 2009),
    Livro(titulo: "c", autor: "c", numeroDePaginas: 3, anoDePublicacao: 2012),
    Livro(titulo: "a", autor: "a", numeroDePaginas: 1, anoDePublicacao: 2008),
    Livro(titulo: "b", autor: "b", numeroDePaginas: 2, anoDePublicacao: 2009),
    Livro(titulo: "c", autor: "c", numeroDePaginas: 3, anoDePublicacao: 2012),
    
    
]

"Eu tenho \(livrosQueLi.count) livros na miha colecao"

var contador: Int = 0
var totalDePaginas: Int = 0

for livro in livrosQueLi{

    if livro.anoDePublicacao != nil && livro.anoDePublicacao! > 2000{
        
        contador = contador + 1
        
        let descricao =  "Livro \(livro.titulo), de \(livro.autor)"
        print(descricao)
        
    }

//    if livro.numeroDePaginas != nil{
//
//        totalDePaginas +=  livro.numeroDePaginas!
//
//    }

    // ?? significa se nao existir valor no negocio utilize 0
   
    totalDePaginas +=  livro.numeroDePaginas ?? 0
    
}

print("Eu tenho \(contador) livros publicados depoisde 2000")
print("Até agora eu li \(totalDePaginas) paginas")

var livroSelecionado: Livro? = nil

for elemento in livrosQueLi{
    if elemento.numeroDePaginas != nil {
        if livroSelecionado == nil {
                livroSelecionado = elemento
        }else{
            if elemento.numeroDePaginas! > livroSelecionado!.numeroDePaginas! {
                livroSelecionado = elemento
                }
        }
    }
}

    
print("O maior livro que eu li foi \(livroSelecionado!.titulo) que tem \(livroSelecionado!.numeroDePaginas!)")

//Quero procurar pelo primeiro livro escrito por c

for elemento in livrosQueLi{
    if elemento.autor == "c"{
        print("Encontrei o livro \(elemento.titulo).")
        break
    }
}

