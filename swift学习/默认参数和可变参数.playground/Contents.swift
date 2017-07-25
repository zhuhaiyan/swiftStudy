//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func sayHello ( name: String, withGreenting greeting: String = "hello" , punctuation: String = "hahhahaha") -> String{
    
    return "\(name)  \(greeting)  \(punctuation)"
    
}

/*
这个有两个参数有默认值，这个时候调用这个函数的时候，可以有好几种方式，
*/
sayHello(name: "zhuhaiyan")

sayHello(name: "zhuhaiyan", withGreenting: "forget", punctuation: "him")

sayHello(name: "lalala", punctuation: "weeew")

print("hello",1,3,4,5, separator: ",", terminator: ".")


//彻底改变两个参数的值，用  inout
func swapTwoInts ( a: inout Int,  b: inout Int){
    
    let t:Int = a
    
    a = b
    
    b = t
}

var x: Int = 1

var y: Int = 2

swapTwoInts(a: &x, b: &y)

x

y


/*///////////

//把函数当做变量

*/

func add( a: Int ,_ b: Int) -> Int{
    
    return a + b
}

let anotherAdd: (Int , Int) -> Int = add

add(a: 3, 9)

func why(name: String){
    print("you are right")
}

let  noWhy: (String) -> Void = why

noWhy

func way(){
    
    print("way")
}

let noWay:()->Void = way

noWay

var arr: [Int] = []

for a in 0..<100{
    
    arr .append(Int (arc4random()%1000))
}

arr

//arr.sort() 这个arr 跟着一起变
//
//arr

//func biggerNumFirst(a: Int, _ b: Int) ->Bool{
//    
//    if a > b {
//        return true
//    }
//    
//    return false
//}
//
//arr.sort { (a, b) -> Bool in
//    
//    return a > b
//}
//
//arr























