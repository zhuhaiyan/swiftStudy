//
//  ViewController.swift
//  闭包使用
//
//  Created by 朱海燕 on 2017/7/25.
//  Copyright © 2017年 朱海燕. All rights reserved.
//

import UIKit

enum errorType: Error{
    
    case  nameOrPassIsEmpty
    
    case otherError
    
}


class ViewController: UIViewController {

    typealias block = (String, String) ->Void
    

    
    lazy var userName: UITextField = {
        
        let name: UITextField = UITextField.init()
        
        name.frame = CGRect(x: 100, y: 100, width: 200, height: 50)
        
        name.backgroundColor = UIColor.blue
        
        name.placeholder = "请输入用户名"
        
        return name
        
    }()
    
    lazy var password: UITextField = {
        
        let password: UITextField = UITextField.init()

        password.frame = CGRect(x: 100, y: 200, width: 200, height: 50)
        
        password.backgroundColor = UIColor.blue
        
        password.placeholder = "请输入密码"
        
        return password
        
    }()
    
    var  loginBtn: UIButton = {
        
        let button: UIButton = UIButton.init()
        
        button.frame = CGRect(x: 150, y: 300, width: 100, height: 40)
        
        button.backgroundColor = UIColor.red
        
        button.setTitle("登录", for: UIControlState.normal)
        
        button.addTarget(self, action: #selector(buttonClick), for: UIControlEvents.touchUpInside)
        
        return button
        
    }()
    
   func buttonClick() -> Void {

        do
        {
            try loginClick(name: userName.text, password: password.text, successBlock: { (arr) in
            
                let  secondVC = SceondViewController()
                
                secondVC.dataArr = arr
                
                secondVC.block = { (name: String) -> Void  in
                 
                    self.userName.text = name
                    
                }
                
                self.show(secondVC, sender: nil)
                
                print(arr)
          })
            
        }catch errorType.nameOrPassIsEmpty
        {
            
            print("username or password is nil ")
            
        }catch errorType.otherError
        {
            
            print("other error")
            
        }catch{
            
            print("ddddd")
        }
        
        
    }
   
    func loginClick(name: String?, password: String?, successBlock: (Array<String>)->Void) throws -> Void {
        
        guard  name != nil  else {
            
            throw errorType.nameOrPassIsEmpty
   
        }
        guard password != nil else {
            
            throw errorType.nameOrPassIsEmpty
     
        }
        
        guard !((name?.isEmpty)!) else {
          
            throw errorType.nameOrPassIsEmpty

        }
        guard !((password?.isEmpty)!) else{
                      
            throw errorType.nameOrPassIsEmpty
        }
        
        let  arr: [String] = ["22","33","44","55"]
        
        successBlock(arr)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        view.addSubview(userName)
        
        view.addSubview(password)
        
        view.addSubview(loginBtn)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

