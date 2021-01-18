//
//  LeaderGroup.swift
//  geqiangbao_20201130_iterator_swift
//
//  Created by xiaobao on 2020/11/30.
//

import UIKit

class LeaderGroup: Leader {


    override func jobName() -> String {
        return "组长"
    }
    
    override func limit() -> Float {
        return 1000
    }
    
    override func handle(expense:ExpenseAccount){
        print(self.jobName() + "处理报销:" + "\(expense.money)")
    }

}
