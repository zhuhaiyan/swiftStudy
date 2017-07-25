//: Playground - noun: a place where people can play

import UIKit


//函数里面调用函数
func changeScore(score: Int) -> Int{
    
    return Int(sqrt(Double(score))*10)
}


func changeScroes (sourc: inout [Int], by changeScore: (Int) -> Int){
    
    for (index,scrore) in sourc.enumerated(){
        
        sourc[index] = changeScore(scrore)
    }
    
}

var  scores: [Int] = [23,45,33,55,22]

scores

let changeFunc: (Int) -> Int = changeScore

//changeScroes(sourc: &scores, by: changeFunc)

changeScroes(sourc: &scores, by: changeScore)



/////////////////////////
var oneArr: [Int] = [98,44,22,55,33,13]

func isPassOrFail(score: Int) -> String{
    
    return score > 60 ? "pass" : "fail"
}

scores.map(isPassOrFail)


//filter 获取你想要的结果的数组，筛选之后全新的数组

func fail(scroe: Int) -> Bool{
    return scroe < 60
}

scores.filter(fail)


//reduce 算数组里所有的和
func add(num1: Int , num2: Int) -> Int{
    return num1 + num2
}

scores.reduce(0, add)

scores.reduce(0, +)

func contactString (str: String , num: Int) -> String{
    
    return str + String (num) + " "
}

scores.reduce("", contactString)













