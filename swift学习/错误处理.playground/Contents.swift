//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class MediaItem{
    var name: String
    
    var password: String{
        
        return "2222"
        
    }
    
    init(name: String) {
        self.name = name
    }
    
}


class Movie: MediaItem{
    
    var director: String
    
    init(name: String, director: String) {
        
        self.director = director
        
        super.init(name: name)
    }
    
}

class Song: MediaItem{
    var artist: String
    
    
    init(name: String,artist: String) {
       
        self.artist = artist
        
        super.init(name: name)
    }
}

var movie1: Movie = Movie(name: "222", director: "22")

var movie2: Movie = Movie(name: "333", director: "33")

var song1: Song = Song(name: "444", artist: "44")

var song2: Song = Song(name: "555", artist: "55")

var song3: Song = Song(name: "666", artist: "66")

let library: [Any] = [movie1,movie2,song1,song2,song3]

var movieCount = 0

var songCount = 0

for itme in  library{
    
    if itme is Movie {
        
        movieCount += 1
        
    }else if itme is Song{
        
        songCount += 1
    }
}


class Person{
    
    var sex: String
    
    var name: String
    
    var mobile: String
    
    init(name: String, mobile: String, sex: String) {
        
        self.name = name
        
        self.mobile = mobile
        
        self.sex = sex
    }
    
}

movieCount

songCount

for itme in library{
    
    if let movie = itme as? Movie {
      
        print("moview is \(movie.director)")
        
    }else if let song = itme as? Song{
        
        print("moview is \(song.password)")
   
    }else if let person = itme as? Person{
        
        
    }
}


//错误处理

enum missType: Error{
  
    case north, south, east, west
    
}

class someClass{
    
    var userName: String?
    
    var password: String?
    
    func  login(name: String, password: String) throws -> String {
        
        guard name.isEmpty || password.isEmpty  else {
        
            throw missType.north
        }
        
        return name + password
        
    }
    
}


typealias block = (String, String)-> String

let  myBlock: block = { (name : String, pass: String) in
    
    return name + pass
    
}

let  result: String = myBlock("22", "44")


// 在某个方法里面直接写block
func startRequest(url: String, callBack: block) ->String{
    
    let  string: String = "333"
    
    return string
}

startRequest(url: "") { (a, b) -> String in
    
    return a + b
}





















