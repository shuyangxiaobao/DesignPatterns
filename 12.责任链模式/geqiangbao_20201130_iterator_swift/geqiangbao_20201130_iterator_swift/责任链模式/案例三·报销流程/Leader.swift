//
//  Leader.swift
//  geqiangbao_20201130_iterator_swift
//
//  Created by xiaobao on 2020/11/30.
//

import UIKit

class Leader: NSObject {
    
    var nextHandler:Leader?
    func handleRequest(expense:ExpenseAccount){
        if self.limit() > expense.money {
            self.handle(expense: expense)
        } else {
            self.nextHandler?.handleRequest(expense: expense)
        }
    }

    func jobName() -> String {
        return ""
    }
    
    func limit() -> Float {
        return 0
    }
    
    func handle(expense:ExpenseAccount){
        
    }

    

}
