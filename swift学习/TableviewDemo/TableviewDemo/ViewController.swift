//
//  ViewController.swift
//  TableviewDemo
//
//  Created by 朱海燕 on 2017/7/24.
//  Copyright © 2017年 朱海燕. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var dataArr: [String] = []
    
    var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width , height: UIScreen.main.bounds.size.height), style: UITableViewStyle.plain)
    
        tableView.delegate = self
        
        tableView.dataSource = self
        
        tableView.separatorStyle = UITableViewCellSeparatorStyle.none
        
//        tableView.register(MyTableViewCell.classForCoder(), forCellReuseIdentifier: "MyTableViewCell")
        
        let nib = UINib(nibName: "MyTableViewCell", bundle: nil)
        
        tableView.register(nib, forCellReuseIdentifier: "MyTableViewCell")
        
        self.view.addSubview(tableView)
        
        dataArr = self.loadData(getData: "122");
        
        self.tableView.reloadData()
    
    }

    func loadData(getData: String) -> [String] {
        
        return ["34","23","66","77","55","44"]
        
    }
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let view: UIView? = UIView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 40))
        
        view?.backgroundColor = UIColor.cyan
        
        if section == 1 {
            return nil
        }
        return  view
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
       
        if section == 1 {
            return 0.01
        }
        return 40
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 60;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: MyTableViewCell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        
        
//        cell.textLabel?.text = dataArr[indexPath.row]
        
        let red = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
        
        let green = CGFloat( arc4random_uniform(255))/CGFloat(255.0)
        
        let blue = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
        
        let alpha = CGFloat(arc4random_uniform(255))/CGFloat(255.0)
        
        cell.headImage?.backgroundColor = UIColor.init(red: red, green: green, blue: blue, alpha: alpha)
        
        cell.textLab?.text = dataArr[indexPath.row]
        
        cell.selectionStyle = UITableViewCellSelectionStyle.none
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        if section == 0 {
            return dataArr.count
        }
        return dataArr.count;
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 2
    }
   
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let collecVC : CollectionViewController = CollectionViewController()
        
        self.navigationController?.pushViewController(collecVC, animated: true)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        self.view.backgroundColor = UIColor.white
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

