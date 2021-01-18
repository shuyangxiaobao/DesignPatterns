//
//  StrategyContext.swift
//  geqiangbao_20201124_strategy_swift
//
//  Created by xiaobao on 2020/12/8.
//

import UIKit


/// 策略上下文
class StrategyContext: Strategy {
    var strategy:Strategy?
    init(strategy:Strategy) {
        self.strategy = strategy
    }
    func demo1() {
        self.strategy?.demo1()
    }    

}
