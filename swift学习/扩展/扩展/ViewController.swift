//
//  ViewController.swift
//  扩展
//
//  Created by 朱海燕 on 2017/7/26.
//  Copyright © 2017年 朱海燕. All rights reserved.
//

import UIKit


extension Int{
    
    mutating func square(){
        
        self = self * self
    }
    
}


typealias  block = (String,String) -> String

protocol  myProtocol {
    
    init(name: Int)
}

protocol SomeProtocol {
    
    var fullName: String {get set}
    
    
    func transtSomeString(transn: String)->String
    
}



struct Hamster {
    
    var name: String
    
    var textualDescription: String {
        
        return "ddddddd"
    }
    
}

protocol TextRepresentable {
    
    var textualDescription: String { get }
}

extension Hamster: TextRepresentable{
    
}

struct Person: SomeProtocol {
   
    func transtSomeString(transn: String) -> String
    {
      
        return transn
    }

    var fullName: String
    
}





 class ViewController: UIViewController,SomeProtocol {
   
    var fullName: String = ""

    func transtSomeString(transn: String) -> String {
        
        print(transn)

        return transn
    }


    var delegate: SomeProtocol? = nil
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegate = self
        
        var john = Person(fullName: "dddd")
        
        john.fullName = "3333"
        
        
        fullName = "zhuhaiyan"
        
        if delegate != nil {
            
            self.delegate?.transtSomeString(transn: "eeeeeee")
        }
        
        let simonHamster = Hamster(name: "simon")

        //因为 Hamster 遵守了 TextRepresentable 的协议，所以，TextRepresentable 里面的方法 Hamster 肯定也是要实现的
        let textResponse: TextRepresentable = simonHamster
        
        let string1 = textResponse.textualDescription
        
        let string = simonHamster.textualDescription
        
        print( string + "     " +  string1)
        
        
    }
    

    
    
    
    
    
    
    
    
    
    
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

