
struct Musica{
    
    var titulo: String
    var artista: String
    var tempo: Double?
    var rating: Double?
    var musicasFavoritas: Bool?
    
}

let music: [Musica] = [

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

var totalDeMusicasFavoritas: Int = 0

var musicaMaisLonga: Musica? = nil

for song in music {
    
    if song.musicasFavoritas == true {
        totalDeMusicasFavoritas = totalDeMusicasFavoritas + 1
    }
    
    if song.rating == 5.0{
        print("A primeira musica com rating 5 é \(song.titulo).")
        break
    }
    if song.tempo != nil {
        if musicaMaisLonga == nil{
            musicaMaisLonga = song
        }else{
            if song.tempo! > musicaMaisLonga!.tempo!{
                musicaMaisLonga = song
            }
        }
    }
    
}

var limitOfTime: Double = 0.0
var totalDeTime: Double = 0.0



for time in music {
    
    if time.tempo != nil {
        totalDeTime += time.tempo!
    }
    
}

var soma: Double = 0.0
var something: Double = 0.0

for affz in music {
    
    if affz.tempo != nil {
        soma += affz.tempo!
    
        if soma <= 1200.0{
            
            something += affz.tempo!
            
            print("Nome: \(affz.titulo)")
        }
    }
    
}

print("Total de musica \(something/60)")
print("O seu total de musicas favoritas é \(totalDeMusicasFavoritas).")
print("O total de tempo das musicas em sua Playlist é \(totalDeTime/60) minutos.")
print("A musica mais longa da sua Playlist é '\(musicaMaisLonga!.titulo)' da banda \(musicaMaisLonga!.artista).")

func imprimaNomeDaPrimeiraMusica(){
    
    print("A minha priemira musica é \(music[0].titulo).")
    
}

imprimaNomeDaPrimeiraMusica()
