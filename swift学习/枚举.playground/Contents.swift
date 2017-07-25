//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 枚举

//raw value
enum Month: Int{
    
    case January = 1
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
}

let  currentMonth = Month.November

currentMonth.rawValue


let NORTH = 1

let SOUTH = 2

let EAST = 3

let WEST = 4

var direction = NORTH


func season( month: String) ->String{
    
    switch month {
    case "March","April","May":
        return "Spring"
    default:
        return "invalid"
    }
}

let month = "modeday"

season(month: month)

// 可选型就是一个枚举型

var website: Optional<String> = Optional.some("iiiiiiii")

website = nil

website = "uuuuuuu"


//结构体

struct Location{
    
    var  latitude : Double
    
    var  longitude : Double
}

var loction: Location = Location(latitude: 233, longitude: 444.00)

loction.latitude

loction.latitude = 890.0

loction


struct Place{
    
    
    let loctaion: Location
    
    var name: String
}

var  place: Place = Place(loctaion: loction, name: "china")


struct Person{
    
    let name: String
    
    let sex: String = ""
    
    let phone: String
    
    init(name: String) {
        self.name = name
        
        self.phone = ""
 
    }
    
    
}

//var  person: Person = Person(name: "haiyan", sex: "girl", phone: "134455555")


var one = Person(name: "33")


var a: Int = 1

a.advanced(by: 100)

class City{
    
    var  firstName: String
    
    var  lastName: String
    
    init(firstName: String , lastName: String) {
        
        self.firstName = firstName;
        
        self.lastName = lastName;
    }
    
    
    
}

let str1: String = "12233"

str1.lengthOfBytes(using: String.Encoding.utf8)

str1.characters.count




let  oneCiyt = City(firstName: "123", lastName: "456")









		
