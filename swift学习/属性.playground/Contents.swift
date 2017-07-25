//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
// 存储属性

//一个存储属性就是存储在特定类或结构体实例里的一个常量或变量。存储属性可以是变量存储属性（用关键字 var 定义），也可以是常量存储属性（用关键字 let 定义）



// 注意： 如果一个被标记为 lazy 的属性在没有初始化时就同时被多个线程访问，则无法保证该属性只会被初始化一次。
struct FixedLengthRange{
    
    var firstValue: Int
    
    let length: Int
    
    mutating func prints() -> Void {
        
        for a in firstValue..<length{
           
            let newValue = firstValue + a
            
            print(newValue)
            
        }
    
    }
}

var rangeItem: FixedLengthRange = FixedLengthRange(firstValue: 0, length: 3)

rangeItem.prints()
//延时存储属性

//延迟存储属性是指当第一次被调用的时候才会计算其初始值的属性。在属性声明前使用 lazy 来标示一个延迟存储属性,必须将延迟存储属性声明成变量（使用 var 关键字

class LazyTest{
    
    lazy var name: String = ""
    
    var password: String = ""
}

//声明的时候，还没有被创建，为nil
let test: LazyTest = LazyTest()

test.password = "23"

test.name = "22"
// 计算属性   计算属性不直接存储值，而是提供一个 getter 和一个可选的 setter，来间接获取和设置其他属性或变量的值

struct Score{
    
        var project: Project = Project()
    
    var centerScore: Double {
        
        get{
            
            return project.allScore()
        }
        
        set{
            
            centerScore = (project.china + project.english + project.math) / project.count
        }
    }
    

}

struct Project{
   
    var china: Double = 0.0
    
    var math: Double = 0.0
    
    var english: Double = 0.0
    
    var count: Double = 0.0
    
    func allScore() -> Double {
    
       let all =  (china + math + english) / count
        
        return all
    }
    
}

var project: Project = Project()

project.math = 120.0

project.china = 134

project.english = 34

project.count = 3


let scroe: Score = Score(project: project)

scroe.centerScore


// 属性观察器

// 属性观察器监控和响应属性值的变化，每次属性被设置值的时候都会调用属性观察器，即使新值和当前值相同的时候也不例外


// willSet 在新的值被设置之前调用
// didSet 在新的值被设置之后立即调用

class StepCounts{
    
    var totalSteps: Int = 0 {
      
        willSet(newTotalStep){
            print("new step is \(newTotalStep)")
        }

        didSet{
            
            if totalSteps > oldValue {
                
                print("added \(totalSteps - oldValue) steps")
            }
        }
    }
    
    
}


let stepCounter = StepCounts()

stepCounter.totalSteps = 20

stepCounter.totalSteps = 80
















		