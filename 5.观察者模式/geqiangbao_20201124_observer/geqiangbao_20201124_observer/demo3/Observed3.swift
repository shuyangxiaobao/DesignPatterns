//
//  Observed3.swift
//  geqiangbao_20201124_observer
//
//  Created by xiaobao on 2020/12/9.
//

import Foundation

protocol Observed3 {
    
    /// 添加观察者
    /// - Parameter observer: <#observer description#>
    func addObserver(observer:Observer3)
    
    
    /// 删除观察者
    /// - Parameter observer: <#observer description#>
    func removeObserver(observer:Observer3)
    
    
    /// 通知观察者
    func notify()

}
