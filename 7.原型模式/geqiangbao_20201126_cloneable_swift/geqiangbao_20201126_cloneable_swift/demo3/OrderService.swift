//
//  OrderService.swift
//  geqiangbao_20201126_cloneable_swift
//
//  Created by xiaobao on 2020/11/26.
//

import UIKit

class OrderService: NSObject {

    var array = Array<Order>()
    
    func add(order:Order){
//        self.array.append(order)
        self.array.append(order.clone())

    }
    
    func printarray(callback:(Order)->Void){
        for order in self.array {
            callback(order)
        }
    }
    
    
    
    
}
