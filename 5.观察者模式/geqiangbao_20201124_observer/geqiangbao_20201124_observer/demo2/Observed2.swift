//
//  Observed2.swift
//  geqiangbao_20201124_observer
//
//  Created by xiaobao on 2020/12/9.
//

import Foundation

/// 抽象被观察者
protocol Observed2 {
    
    /// 添加观察者
    /// - Parameter observer: <#observer description#>
    func addObserver(observer:Observer2)
    
    /// 删除观察者
    /// - Parameter observer: <#observer description#>
    func removeObserver(observer:Observer2)
    
    /// 通知观察者
    func notifyObserver()

}


