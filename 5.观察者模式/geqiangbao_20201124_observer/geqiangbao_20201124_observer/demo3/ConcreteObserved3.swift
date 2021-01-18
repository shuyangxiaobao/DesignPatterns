//
//  ConcreteObserved3.swift
//  geqiangbao_20201124_observer
//
//  Created by xiaobao on 2020/12/9.
//

import UIKit

/// 具体被观察者
class ConcreteObserved3: NSObject,Observed3 {
    
    private var arr = Array<Observer3>()
    func addObserver(observer: Observer3) {
        self.arr.append(observer)
    }
    
    func removeObserver(observer: Observer3) {
        for index in 0...self.arr.count {
            let obj = self.arr[index];
            if (obj as? NSObject) == (observer as? NSObject) {
                self.arr.remove(at: index)
                return
            }
        }
    }
    
    func notify() {
        var iterator = self.arr.makeIterator()
        while let obj = iterator.next() {
            obj.update(message: "geng xin la")
        }
    }
    

}
