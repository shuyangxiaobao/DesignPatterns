//
//  SpecificObserver.swift
//  geqiangbao_20201124_observer
//
//  Created by xiaobao on 2020/12/9.
//

import UIKit

class SpecificObserver: NSObject,Observer2 {
    func update(msg: String, observer: Observed2?) {
        print("SpecificObserver: msg= \(msg)")

    }
    
    
    func equal(other:Observer2) -> Bool{
        if other is SpecificObserver {
            return other as! NSObject == self
        } else {
            return false
        }
    }

    
  
    

}
