//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//类
class Person{
    
    let firstName: String
    let secondName: String
    var career: String
    
    init(firstName: String , secondName: String , career: String) {
        
        self.firstName = firstName;
        
        self.secondName = secondName;
        
        self.career = career;
    }
    
    func updateName(name: String) -> String {
        
        return name + self.firstName + self.secondName
    }
    
}

var  person1: Person = Person(firstName: "133", secondName: "144" , career: "33333")

var person2: Person = Person(firstName: "133", secondName: "144", career: "33333")

//像这种对类实例化两个变量的，是两个不同的空间，即使他们里面存的东西一模一样，但是他们是两块不同的内存区域，比较两个变量是否相等用三个等于号
person1 === person2



//像这种直接赋值给一个新的常量的，就是同一个存储空间，就可以直接比较
let person3 = person1

person1 === person3




person1.updateName(name: "2222")

person1.career = ""


//结构体

struct Location{
    
    var x: Int
    
    let y: Int
    
    mutating func changeX() -> Int {
        
        self.x = self.x + 1
        
        return self.x
    }
    
}

var location: Location = Location.init(x: 12, y: 4)

location.x

location.y

location.changeX()


// 什么时候用结构体，什么时候用类

// 结构体是值类型，类是引用类型

// 类是可以被继承的


struct Point{
    
    var x = 0.0
    
    var y = 0.0
    
}

struct Size{
    
    var width = 0.0
    
    var height = 0.0
    
}

class Rectangle{
    
    var origin = Point()
    
    var size = Size()
    
    var center: Point{
    
        get{
            let centerX = origin.x + size.width / 2
            
            let centerY = origin.y + size.height / 2
 
            return Point(x:centerX , y:centerY)
        }
        
        set{
            
            origin.x = newValue.x - size.width / 2
            
            origin.y = newValue.y - size.height / 2
        }
    }
    
    
    init(origin: Point , size: Size) {
        
        self.origin = origin
        
        self.size = size
    }
    
}

Point()

var point: Point = Point(x: 20, y: 40)

var rect = Rectangle (origin: point, size: Size(width: 10, height: 5))

rect.center.x

rect.center.y



let string: String = "22"

let start = string.startIndex

let end = string.endIndex

let index = string.index(start, offsetBy: 1)

let index2 = string.index(start, offsetBy: 11, limitedBy:end )


// 属性观察值

class LightBulb{
    
    static var MaxCurrent: Int?
}

let light: LightBulb = LightBulb()

LightBulb.MaxCurrent = 30


//didset willset 不会在init 里面调用























		