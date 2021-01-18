//
//  PayOrder.swift
//  geqiangbao_20201126_cloneable_swift
//
//  Created by xiaobao on 2020/11/26.
//

import UIKit

class PayOrder: Order {

    var payName:String
    init(name:String,content:String,payName:String) {
        self.payName = payName
        super.init(name: name, content: content)
    }
    
    override func clone() -> Order {
        return PayOrder(name: self.name, content: self.content, payName: self.payName)
    }
}
