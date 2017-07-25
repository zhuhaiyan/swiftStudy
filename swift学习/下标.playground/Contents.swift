//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 下标 可以定义在类、结构体和枚举中，是访问集合，列表或序列中元素的快捷方式。可以使用下标的索引，设置和获取值，而不需要再调用对应的存取方法。举例来说，用下标访问一个Array实例中的元素可以写作someArray[index]，访问Dictionary实例中的元素可以写作someDictionary[key]

var numberDic = ["apple":3,"banana":4,"orange":4]

numberDic["purple"] = 5

numberDic

numberDic.updateValue(2, forKey: "aaa")

numberDic

// 继承

class Vehicle{
    
    var currentSpeed = 0.0
    
    //description 是一个属性
    var description:String {
        
        return "22222"
    }
    
    func makeNoise() -> Void {
        
        
    }
    
}


// 子类可以继承父类方法，也可以重写父类方法

class Bicicle: Vehicle{
    
    var  hasBasket = false
    
    override func  makeNoise() {
       
        hasBasket  = true
    }
    
}


let bicycle: Bicicle = Bicicle()

bicycle.makeNoise()

bicycle.hasBasket

bicycle.currentSpeed = 12.4

bicycle.description


// 重写属性

class Car: Vehicle{
    
    var gear = 2
    
    override var description: String{
        
        return  super.description + "3333333"
    }
}

let car: Car = Car()

car.gear = 4

car.description

car.currentSpeed = 12.22


//防止重写 你可以通过把方法，属性或下标标记为final来防止它们被重写，只需要在声明关键字前加上final修饰符即可（例如：final var，final func，final class func，以及final subscript）

//如果你重写了带有final标记的方法，属性或下标，在编译时会报错。在类扩展中的方法，属性或下标也可以在扩展的定义里标记为 final 的

//你可以通过在关键字class前添加final修饰符（final class）来将整个类标记为 final 的。这样的类是不可被继承的，试图继承这样的类会导致编译报错

// 构造过程
struct Color{
    
    let red, gree, blue : Double
    
    init(red: Double, green: Double, blue: Double) {
        
        self.red = red;
        
        self.gree = green;
        
        self.blue = blue;
    }
    
    init(white: Double) {
        
        self.red = white
        
        self.gree = white;
        
        self.blue = white;
    }
    
    init(_ name: Double) {
        
        self.red = name
        
        self.gree = name
        
        self.blue = name
    }
    
}

let  color: Color = Color(white: 13.4)

let color2: Color = Color(0.9)


var block = {(name: String) ->String in
    
    return name + "44"
}

block("33")




class Question{
    
    let text: String
    
    var response: String?
    
    init(text: String) {
        
        self.text = text
    }
    
}

let question: Question = Question(text: "who are you")

//question.response

if let respones = question.response{
    
    print(respones)
}else
{
    print("response is nil")
}


class Food{
    
    var name: String
    
    init(name: String) {
        
        self.name = name
    }
    
    convenience init(){
        self.init(name: "2222")
    }
}


let  nameFoof: Food = Food(name: "12334445")


class subFood: Food{
    
    var weight: Int
    
    init(name: String , weight: Int){
        
        self.weight = weight
        
        super.init(name: name)
    }
    
    override convenience init(name: String) {
        
        self.init(name: name, weight: 1)
    }
    
    
}

struct Animal{
    
    let  name: String
    
    init?(name: String) {
        
        if name.isEmpty {
            return nil
        }else
        {
            self.name = name
        }
    }
}


if let animal = Animal(name: "") {
    
    print(animal.name)
}else
{
    print("dddddd")
 
}

class clothes{
    
    let isBuyClother: Bool = {
       
        var isBuy = Bool();
    
        return isBuy
        
    }()
    
}

class Bank{
    
    static var coninsBank = 10_000
    
    static func distribute(conins: Int) -> Int{
        
        let  conine2 = min(conins, coninsBank)
        
        coninsBank -= conins
        
        return conine2
        
    }
    
    static func receviec(coins: Int){
        
        coninsBank += coins
        
        print(coninsBank)
    }
}

class Player{
    
    var  coninsInPurse: Int
    
    init(coins: Int) {
        
        coninsInPurse = Bank.distribute(conins: coins)
    }
    
    func win(coins: Int) -> Void {
        
        coninsInPurse += Bank.distribute(conins: coins)
    }
    
    deinit {
        Bank.receviec(coins: coninsInPurse)
    }
    
}

var  playerOne : Player? = Player(coins: 100)

playerOne = nil // 当为nil 时，自动调用deinit方法


// 自动引用计数
class Person{
    
    let  name: String
    
    init(name: String) {
        
        self.name = name
        
        print("\(name) is being init")
    }
    
    deinit {
        print("it is being deinit")
    }
    
}




var person1: Person?

var person2: Person?

var person3: Person? = Person(name: "zhuhaiyan")


person1 = person3

person2 = person3

person1 = nil

person2 = nil

person3 = nil

















