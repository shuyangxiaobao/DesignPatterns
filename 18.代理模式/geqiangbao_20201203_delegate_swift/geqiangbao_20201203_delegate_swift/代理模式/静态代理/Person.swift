//
//  Person.swift
//  geqiangbao_20201203_delegate_swift
//
//  Created by xiaobao on 2020/12/3.
//

import UIKit

class Person: NSObject,BuyProtocol {
    var name:String?
    
    init(name:String) {
        self.name = name
    }
    
    func buyProduct() {
        print("\(self.name ?? "")购买手机")
    }
    
    func payGoods() {
        print("\(self.name ?? "")付款6888")
    }
    

}
