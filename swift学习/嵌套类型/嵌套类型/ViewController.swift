//
//  ViewController.swift
//  嵌套类型
//
//  Created by 朱海燕 on 2017/7/25.
//  Copyright © 2017年 朱海燕. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        let blankJack: BlankJackCard = BlankJackCard(rank: BlankJackCard.Rank.Two , suit:.hongtao)
        
        print(blankJack.dicription)
        
        
    }

    struct  BlankJackCard {
    
        enum Suit: String {
            
            case hongtao = "hongtao" ,fangkuai = "fangkuai",heitao = "heitao", meihua = "meihua"
        }
        
        enum Rank: Int {
            
            case Two = 2, Three,Four,Five,Six,Seven,Eight,Nine,Ten
            
            case J,Q,K,A
            
            struct Values {
                
                var frist: Int
                
                let second: Int?
                
            }
            
            var values: Values {
                
              
                switch self{
                    
                case .A:
                    
                    return Values(frist: 22, second: 11)
                    
                case .J,.Q,.K:
                    
                    return  Values(frist: 33, second: nil)
                    
                default:
                    
                    return Values(frist: self.rawValue, second: nil)
                    
                }

            }
            
        }
        
        
        let  rank: Rank, suit: Suit
        
        var dicription: String {
            
            var outPut = "suit is \(suit.rawValue) "
            
            outPut += "value is \(rank.values.frist) "
            
            if let second = rank.values.second {
                
                outPut += " or \(second)"
            }
            
            return outPut
        }

    }
    

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

