import UIKit

class MediaItem{
    var name:String
    init(name:String){
        self.name = name;
    }
}

class Movie:MediaItem{
    var director:String
    init(name:String, director:String){
        self.director = director
        super.init(name: name);
    }
}

class Song:MediaItem{
    var artist:String
    init(name:String, artist:String){
        self.artist = artist;
        super.init(name: name)
    }
}

let library = [
    Movie(name: "Casablanca", director: "Michael Curtiz"),
    Song(name: "Blue Suede Shoes", artist: "Elvis Presley"),
    Movie(name: "Citizen", director: "Orson"),
    Song(name: "The One and only", artist: "Chesney Hawkes"),
    Song(name: "Never Gonna Give", artist: "Rick Astely")
]

var movieCount = 0;
var songCount = 0

for item in library{
    if item is Movie {
        movieCount += 1;
    }else if item is Song{
        songCount += 1;
    }
}


print("電影的數量是\(movieCount),歌曲的數量是\(songCount)");

for item in library{
    if let movie = item as? Movie{
        
        print("Movie:\(movie.name), \(movie.director)")
    }else if let song = item as? Song{
        print("Song:\(song.name),\(song.artist)");
    }
}

var things = [Any]();
things.append(0)
things.append(0.0)
things.append(42)
things.append(3.14159)
things.append("Hello")
things.append((3.0, 5.0))
things.append(Movie(name: "Ghostbuters", director: "Ivan Reitman"))
things.append({
    (name:String) -> String in
        "Hello, \(name)"
})
