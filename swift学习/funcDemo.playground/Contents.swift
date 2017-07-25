//: Playground - noun: a place where people can play

import UIKit

func sayHello (name:String?) -> String{
    
    if name != nil {
        
        return "123"
    }
    return "hello " + (name ?? "world")
}

var nickName: String? = nil

sayHello(name: nickName)

sayHello(name: "zhuhaiyan")


func printHello() -> (){
   
    print("hello")
}

printHello()

func printHi(){
    
    print("123")
}

printHi()

var string: NSString = "hahahhahah"

string


func findMaxAndMin ( numbers: [Int] ) ->  ( max:Int, min:Int )? {
   
    guard  numbers.count > 0 else {
        return nil
    }
    
    var maxValue:Int = numbers[0]
    
    var minValue:Int = numbers[0]
    
    for number in numbers {
        
        minValue = minValue < number ? minValue:number
        
        maxValue = maxValue > number ? maxValue:number
        
    }
    
    return (maxValue, minValue)

}

var  scoresArr : [Int]? = nil

scoresArr = scoresArr ?? []


//result 现在是一个可选型，用之前必须解包

if let result = findMaxAndMin(numbers: scoresArr!) {
    
    result.max
    
    result.min
}

let result = findMaxAndMin(numbers: scoresArr!)//强制解包

result?.max

result?.min


//result 是一个元祖，有点类似于oc里面返回值是多个的，比如返回一个modle，或者一个字典，数组啊，一个意思



func sayHello( name: String,withGreetingWord greenting: String) -> String{
   
//    return name + greenting
    
    return "\(name),  \(greenting)"
    
}
//withGreetingWord 是外部参数名，当外部参数名存在时，调用时，就用外部参数名，内部参数名省略

sayHello(name: "zhuhaiyan",  withGreetingWord: "hello")

var arr = [1,3,4,5,6]

arr .insert(0, at: 0)

var strs = "hello playground"

strs.replacingOccurrences(of: "hello", with: "morning")






func mutiply(_ num1: Int ,_ num2: Int) -> Int{
    
    return num1 * num2
}

//mutiply(num1: 4, num2: 2)

//如果前面加了一个下划线，意思就是不需要写参数名，

mutiply(4, 2)



































