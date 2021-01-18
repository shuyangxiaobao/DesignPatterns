//
//  Subject.swift
//  geqiangbao_20201124_observer
//
//  Created by xiaobao on 2020/12/9.
//

import UIKit

/// 具体被观察者
class Subject: NSObject,Observed2 {
    
    var arr = Array<Observer2>()
    
    func addObserver(observer: Observer2) {
        self.arr.append(observer)
    }
    
    func removeObserver(observer: Observer2) {
        for index in 0...self.arr.count {
            if self.arr[index].equal(other: observer) {
                self.arr.remove(at: index)
                break;
            }
        }
    }
    
    func notifyObserver() {
        var iterator = arr.makeIterator()
        while let obj = iterator.next() {
            obj.update(msg: "更新啦", observer: self as? Observed2)
        }
    }
    
    
}
