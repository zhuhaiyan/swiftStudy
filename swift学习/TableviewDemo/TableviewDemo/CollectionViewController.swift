//
//  CollectionViewController.swift
//  TableviewDemo
//
//  Created by 朱海燕 on 2017/7/24.
//  Copyright © 2017年 朱海燕. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    var collectionView: UICollectionView?
    
    var dataDic: [String: [String]] = [:]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let collectionViewLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout.init();
        
        collectionViewLayout.itemSize = CGSize(width: 80, height: 50)
        
        collectionView = UICollectionView.init(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height), collectionViewLayout:collectionViewLayout )
       
        let nib = UINib.init(nibName: "MyCollectionViewCell", bundle: nil)
        
        collectionView?.register(nib, forCellWithReuseIdentifier: "MyTableViewCell")
        
        collectionView?.delegate = self;
        
        collectionView?.dataSource = self;
        
        view.addSubview(collectionView!)
        
        getData()
        
        
        
    }

    func getData() -> Void {
     
         let arr: [String] = ["22","44","55","666"]
        
         dataDic.updateValue(arr, forKey: "0")
         dataDic.updateValue(arr, forKey: "1")
         dataDic.updateValue(arr, forKey: "2")
         dataDic.updateValue(arr, forKey: "3")
        
         collectionView?.reloadData()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        let string: String = String(section)
        
        if  let arr: [String] = dataDic[string] {
        
        return arr.count
        }
        
        return 0
        
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return dataDic.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
       
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        
        cell.backgroundColor = UIColor.blue
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {

        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        self.view.backgroundColor = UIColor.white
    }
    
}
