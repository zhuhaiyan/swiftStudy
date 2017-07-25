//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var dic : [String : String] = ["name":"22","password":"333"]

var dict: Dictionary<String,String>  = ["22":"00"];

var emptyDic1:[String:Int] = [:]

var emptyDic2:Dictionary<Int,String> = [:]

var emptyDic3 = [String:String]();

emptyDic1["22"] //返回的是可选型

if let value = dic["34"] {
    print(value)
}

emptyDic1.updateValue(23, forKey: "number")

emptyDic1

dic.count

dic.isEmpty

Array(dic.keys)

Array(dic.values)

dic.updateValue("zhuhaiyan", forKey: "name")

dic

//集合是无序的 ,并且集合里面的值都不会重复
var skillsOfA: Set <String> = ["swift","oc"]

var skillOfB: Set<String> = ["html","css"]

var skillOfC: Set<String> = []

skillOfC.insert("swift")

skillOfC.insert("html")

skillOfC.insert("css")

skillOfC.insert("css")

skillOfC

skillOfC.remove("css")

skillOfC

skillOfC.remove("12") // 因为有可能是nil，所以返回值是可选型

skillOfC

//判断可选型不为nil
if let skill = skillOfC.remove("html") {
    
    print("html is removed")
}

skillOfC.removeAll()

skillOfC



var skillsOfA1: Set <String> = ["swift","oc"]

var skillOfB1: Set<String> = ["html","css"]

var skillOfC1: Set<String> = ["swift","javascript"]

skillsOfA1.underestimatedCount //集合中元素个数

skillsOfA1.union(skillOfC1)

skillsOfA1

skillsOfA1.intersection(skillOfC1)

skillsOfA1

skillsOfA1.subtract(skillOfC1)

skillsOfA1

skillsOfA1.subtract(skillOfB1)

skillsOfA1

var skillsOfD1 = ["oc"]

//skillsOfD1.isSuperset(skillsOfA1)












		
