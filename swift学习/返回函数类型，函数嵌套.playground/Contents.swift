//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func one (weight: Int) -> Int{
    return 1 * weight
}

func two (weight: Int) -> Int{
    return 3 * weight
}

func chooesTypeWithWeight (weight: Int) -> (Int)->(Int){
    
    return weight > 10 ? one : two
}


func allPrice (weight: Int , price: Int) ->Int{
    
  let typeWeight = chooesTypeWithWeight(weight: weight)
    
  return typeWeight(weight) + price * weight
}

allPrice(weight: 5, price: 5)




//函数里面嵌套函数
func anotherPriceCalute(weight: Int , price: Int) -> Int{
    
    
    func switchType (weight: Int) -> (Int) -> Int{
        return weight > 10 ? one : two
    }
    
    let type = switchType(weight: weight)
    
    return type(weight) + price * weight
    
}

anotherPriceCalute(weight: 5, price: 5)



