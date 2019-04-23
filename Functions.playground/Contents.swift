struct Musica{
    
    var titulo: String
    var artista: String
    var tempo: Double?
    var rating: Double?
    var musicasFavoritas: Bool?
    
}

let minhaplaylist: [Musica] = [
    
    Musica(titulo: "You got the love!", artista: "Florence and the Machine", tempo: 2*60+49, rating: 4.5, musicasFavoritas: true),
    Musica(titulo: "Digital", artista: "Joy Division", tempo: nil, rating: 4.8, musicasFavoritas: true),
    Musica(titulo: "Between the bars", artista: "Elliott Smith", tempo: 2*60+21, rating: 5.0, musicasFavoritas: true),
    Musica(titulo: "PLEASE", artista: "DPR LIVE, HYO Eun kim, G2, Dumbfouder", tempo: 3*60+05, rating: 4.0, musicasFavoritas: true),
    Musica(titulo: "Pretty Girls Make Graves", artista: "The Smiths", tempo: 3*60+43, rating: 4.7, musicasFavoritas: true),
    Musica(titulo: "My Sweet Lord", artista: "George", tempo: 4*60+41, rating: 4.8, musicasFavoritas: false),
    Musica(titulo: "Present Tense", artista: "Radiohead", tempo: 5*60+07, rating: 4.8, musicasFavoritas: true),
    Musica(titulo: "Planet Caravan", artista: "Black Sabbath", tempo: 4*60+30, rating: 4.9, musicasFavoritas: false),
    Musica(titulo: "Empire Ants", artista: "Gorillaz,Little Dragon", tempo: 4*60+44, rating: 5.0, musicasFavoritas: true),
    Musica(titulo: "Strange Fruit", artista: "Billie Holliday", tempo: 3*60+12, rating: 5.0, musicasFavoritas: true),

]

//--------------------------------* FUNCIONS *---------------------------------------
//
//  func nomeDaFuncao(){
//       instrucoes...
//  }
//

func pegueNomeDaPrimeiraMusica(playlist: [Musica]) -> String?{
 // quando tem o ! na frente significa 'Se nao estiver vazia'
    
    if playlist.isEmpty {
        return nil
    }else{
        return playlist[0].titulo
    }
    
}

func calculeTempoTotalDaPlaylist() -> Double{
    var tempoTotal: Double = 0
    
    for musica in minhaplaylist{
        tempoTotal += musica.tempo ?? 0
    }
    
    return tempoTotal
    
}

let tempoDaPlaylist = calculeTempoTotalDaPlaylist()
print("O tempo total da playlist é \(tempoDaPlaylist/60) minutos.\n")

let nome =  pegueNomeDaPrimeiraMusica(playlist: minhaplaylist)
print("A primeira musica na sua playlist é \(nome!).\n")

var somaDoTempo: Double = 0.0
var limitOfTime: Double = 0.0

func selecionaMusicas(daplaylist playlist: [Musica], queNaoUltrapassamTempo tempoLimite: Double) -> [Musica]{
    var seleção: [Musica] = []
    
    for elemento in playlist{
        
        if elemento.tempo != nil{
            somaDoTempo += elemento.tempo!
                if somaDoTempo <= tempoLimite{
                    seleção.append(elemento)
            }
        }
        
    }
    
    return seleção
}

let test = selecionaMusicas(daplaylist: minhaplaylist, queNaoUltrapassamTempo: 1200.0)


var somaFull: Double = 0.0
var aux: Int = 0

print("As musicas que não ultrapassam o tempo limite são: \n")
for musica in test {
    
    aux += 1
    print("\(aux) - \(musica.titulo)")
    
    if !test.isEmpty{
        
        somaFull += musica.tempo!

    }

}

print("\nA soma do tempo das musicas que nao ultrapassam o tempo limite é: \(somaFull/60) minutos.")


//var totalDeMusicasFavoritas: Int = 0
//
//var musicaMaisLonga: Musica? = nil
//
//for song in music {
//
//    if song.musicasFavoritas == true {
//        totalDeMusicasFavoritas = totalDeMusicasFavoritas + 1
//    }
//
//    if song.rating == 5.0{
//        print("A primeira musica com rating 5 é \(song.titulo).")
//        break
//    }
//    if song.tempo != nil {
//        if musicaMaisLonga == nil{
//            musicaMaisLonga = song
//        }else{
//            if song.tempo! > musicaMaisLonga!.tempo!{
//                musicaMaisLonga = song
//            }
//        }
//    }
//
//}
