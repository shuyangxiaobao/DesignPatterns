//
//  ExpenseAccount.swift
//  geqiangbao_20201130_iterator_swift
//
//  Created by xiaobao on 2020/11/30.
//

import UIKit

class ExpenseAccount: NSObject {
    //报销单金额
    var money:Float
    //报销单项目
    var title:String
    //报销单内容
    var content:String
    init(money:Float,title:String,content:String) {
        self.money = money;
        self.title = title;
        self.content = content;
    }

}
