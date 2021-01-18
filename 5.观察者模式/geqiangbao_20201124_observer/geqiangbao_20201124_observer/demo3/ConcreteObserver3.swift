//
//  ConcreteObserver3.swift
//  geqiangbao_20201124_observer
//
//  Created by xiaobao on 2020/12/9.
//

import UIKit


/// 具体观察者
class ConcreteObserver3: NSObject,Observer3 {
    func update(message: String) {
        print("ConcreteObserver3: \(message)")
    }
    

}
