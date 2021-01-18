//
//  Order.swift
//  geqiangbao_20201126_cloneable_swift
//
//  Created by xiaobao on 2020/11/26.
//

import UIKit

class Order: NSObject,CloneableProtocol {
    
    var name:String
    
    var content:String
    init(name:String,content:String) {
        self.name = name
        self.content = content
    }
    
    func clone() -> Order {
        return Order(name: self.name, content: self.content)
    }

}
