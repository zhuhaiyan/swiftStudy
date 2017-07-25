//
//  MyTableViewCell.swift
//  TableviewDemo
//
//  Created by 朱海燕 on 2017/7/24.
//  Copyright © 2017年 朱海燕. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    
    @IBOutlet var headImage: UIImageView!
    
    @IBOutlet var textLab: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
