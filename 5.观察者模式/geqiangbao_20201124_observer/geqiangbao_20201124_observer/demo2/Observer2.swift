//
//  Observer2.swift
//  geqiangbao_20201124_observer
//
//  Created by xiaobao on 2020/12/9.
//

import Foundation

/// 抽象观察者
protocol Observer2 {
    func update(msg:String,observer:Observed2?)
    
    func equal(other:Observer2) -> Bool
}
