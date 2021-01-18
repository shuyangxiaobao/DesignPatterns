//
//  LeaderManager.swift
//  geqiangbao_20201130_iterator_swift
//
//  Created by xiaobao on 2020/11/30.
//

import UIKit

class LeaderManager: Leader {
    override func jobName() -> String {
        return "主管"
    }
    
    override func limit() -> Float {
        return 5000
    }
    
    override func handle(expense:ExpenseAccount){
        print(self.jobName() + "处理报销:" + "\(expense.money)")
    }
}
