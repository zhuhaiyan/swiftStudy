//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


// 实例方法

struct Point{
    
    var x: Double = 0.0
    
    var y: Double = 0.0
    
    mutating func changeXY(x: Double , y: Double){
        
        self = Point(x: x + 30, y: y + 3)
    }
    
    func centerPoint() -> Double {
        
        return self.x + self.y
    }
}

var point: Point = Point()

point.changeXY(x: 34.4, y: 45.9)

point

point.centerPoint()




///实例方法

//方法名前面加 class 或者 static 都可以变成类方法
class SomeClass{
    
    class func oneWay() -> Void {
        
        print("12334444")
    }
    
    static func secondWay(){
        print("44444444")
    }
    
}

SomeClass.oneWay()

SomeClass.secondWay()















