//
//  SecondViewController.swift
//  TranstDemo
//
//  Created by 朱海燕 on 2017/7/18.
//  Copyright © 2017年 朱海燕. All rights reserved.
//

import UIKit

protocol valueDelegate {
    
    func transValue(string: String ,name:String)
}

typealias myBlock = (_ string : String,_ name : String) ->Void

class SecondViewController: UIViewController {

    var delegate :valueDelegate?
    
    var myBlock : myBlock?
    
//    var textField: UITextField = UITextField(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        
        view.addSubview(textField)
        
        let button: UIButton = UIButton(frame: CGRect(x: 100, y: 300, width: 100, height: 100))
        
        button.backgroundColor = UIColor.red
        
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(SecondViewController.buttonCLick), for: .touchUpInside)
        
        
        
        
        
    }
    
    func buttonCLick(button:UIButton) {
        
        self.delegate?.transValue(string: "123", name: "456")
        
        self.myBlock!("222","33")
        
        self.navigationController?.popViewController(animated: true)
        
    }
    
    lazy var textField: UITextField  = {
        
        let textField = UITextField(frame: CGRect(x: 100, y: 100, width: 200, height: 50))
        
        return textField
    }()
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
