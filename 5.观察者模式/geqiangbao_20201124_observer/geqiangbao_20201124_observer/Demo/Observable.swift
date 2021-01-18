//
//  Observable.swift
//  geqiangbao_20201124_observer
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

//抽象被观察者
protocol Observable {
    func addObserver(observer:Observer)
    func removeObserver(observer:Observer)
    func notifyObserver()
    func notifyObserver(msg:Any?)
    func countObserver() -> Int
    func setChanged()
    func clearChanged()
    func hasChanged() -> Bool
}
