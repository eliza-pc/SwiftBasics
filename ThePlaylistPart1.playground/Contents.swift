import UIKit

enum NivelDeFavoritismo{
    
    case meh
    case ok
    case topis
    case amoMuito
    case musicaDaMinhaLife
    
}

enum Genero{
    
    case rock
    case alternativo
    case punkrock
    case eletronica
    case oldButGood
    
}
struct Musica{
    
    var nomeDoArtista: String
    var nomeDaMusica: String
    var nomeDoAlbum: String?
    var dataDeLancamento: String?
    var time: Double?
    var nivel: NivelDeFavoritismo
    var genero: Genero
    
}

let musicasFavoritas: [Musica] = [
    
    Musica(nomeDoArtista: "Crystal Castles", nomeDaMusica: "Knights", nomeDoAlbum: nil , dataDeLancamento: nil,time: 3.12,nivel: .amoMuito,genero: .eletronica),
    Musica(nomeDoArtista: "Rupert Holmes", nomeDaMusica: "Escape", nomeDoAlbum: nil, dataDeLancamento: nil,time: 4.35,nivel: .musicaDaMinhaLife,genero: .oldButGood),
    Musica(nomeDoArtista: "Radiohead", nomeDaMusica: "Present Tense", nomeDoAlbum: "A Moon Shaped Pool", dataDeLancamento: nil,time: 5.05,nivel: .amoMuito,genero: .rock),
    Musica(nomeDoArtista: "Elliott Smith", nomeDaMusica: "Between the bars", nomeDoAlbum: "Either/Or", dataDeLancamento: nil,time: 2.19,nivel: .amoMuito, genero: .alternativo),
    Musica(nomeDoArtista: "Joy Divison", nomeDaMusica: "Digital", nomeDoAlbum: nil, dataDeLancamento: nil, time: 0, nivel: .amoMuito, genero: .punkrock)
    
]


let tempoTotal = musicasFavoritas[0].time! + musicasFavoritas[1].time! + musicasFavoritas[2].time! + musicasFavoritas[3].time! + musicasFavoritas[4].time!


if musicasFavoritas.count > 0{
    
    "Voce tem \(musicasFavoritas.count) favoritas!"
    "O Tempo total de todas suas musicas é \(tempoTotal) minutos!"
    
}else{
    
    "Que Triste! Voce nao tem musicas favoritas!"
    
}

var totalDeTime = 0.0


for i in musicasFavoritas{
    
    if i.time !=  nil{
        
        totalDeTime +=  i.time!
        
    }
    
    
}

print(totalDeTime)

