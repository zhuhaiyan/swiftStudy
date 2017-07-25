//
//  SceondViewController.swift
//  闭包使用
//
//  Created by 朱海燕 on 2017/7/25.
//  Copyright © 2017年 朱海燕. All rights reserved.
//

import UIKit

typealias myBlock = (_ string: String) ->Void

class SceondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var block: myBlock?
    
    var dataArr: [String] = []
    
    lazy var tableView: UITableView = {
       
        let tableView1 = UITableView.init(frame: self.view.bounds, style: UITableViewStyle.plain)
        
        return tableView1
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(tableView)
        
        tableView.delegate = self
        
        tableView.dataSource = self
        
        //纯代码注册cell
        tableView.register(UITableViewCell.classForCoder(), forCellReuseIdentifier: "cell")
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
   
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let  cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = dataArr[indexPath.row]
        
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
      self.block!("反向传值成功")
        
      self.navigationController?.popViewController(animated: true)
                
    }
        
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
