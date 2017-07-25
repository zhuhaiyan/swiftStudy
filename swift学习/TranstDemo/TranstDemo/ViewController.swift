//
//  ViewController.swift
//  TranstDemo
//
//  Created by 朱海燕 on 2017/7/18.
//  Copyright © 2017年 朱海燕. All rights reserved.
//

import UIKit

class Test: NSObject {
    
    var name: String?
    
    var password: String?
    
//    init(name: String , password: String) {
//        
//        self.name = name
//        
//        self.password = password
//    }
    
    func changeValue(name: String , password: String) -> (String,String) {
        
         return (name,password)
    }
}


class ViewController: UIViewController,valueDelegate {
    
    var textLab : UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem:.add, target: self, action: #selector(ViewController.jumpNextVC))
       
        textLab = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        
        textLab.backgroundColor = UIColor.cyan
        
        view.addSubview(textLab)
        
        let test: Test = Test()
        
//        let test: Test = Test(name: "123", password: "345")
        
        let aaa: (a:String,b:String) =  test.changeValue(name: "344", password: "5444");
    
        print(aaa)
        
        
        
        
    }
    
    func jumpNextVC(){
      
        let seconVC = SecondViewController()
        
//        seconVC.delegate = self;
        
//        seconVC.myBlock = { string, name in
//            
//            self.textLab.text = string
//        }
        
        seconVC.myBlock = { (string: String,name : String)->Void in
            
            self.textLab.text = string
            
        }
        
        self.show(seconVC, sender: nil)

    }
    
    func transValue(string: String, name: String) {
        
//        textLab.text = string
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


    
    
    
    
}

