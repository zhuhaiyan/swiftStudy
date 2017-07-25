//: Playground - noun: a place where people can play

import UIKit

var arr: [Int] = []

for a in 0..<100{
    
    arr.append( Int(arc4random()%1000))
}

arr.sort(by: { (a, b) -> Bool in
    
    return a < b
})

arr


let showView = UIView (frame: CGRect (x: 0, y: 0, width: 300, height: 300))

let view1 = UIView(frame: CGRect (x: 0, y: 0, width: 50, height: 50))


view1.center = showView.center

view1.backgroundColor = UIColor.red

showView.addSubview(view1)


UIView.animate(withDuration: 2.0) {
    
    view1.backgroundColor = UIColor.blue
    
    view1.frame = showView.frame
    
};

