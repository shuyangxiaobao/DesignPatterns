//
//  PersonProxy.swift
//  geqiangbao_20201203_delegate_swift
//
//  Created by xiaobao on 2020/12/3.
//

import UIKit

class PersonProxy: NSObject,BuyProtocol {
    var person:Person?
    
    init(name:String) {
        self.person = Person(name:name)
    }
    
    func buyProduct() {
        self.person?.buyProduct()
    }
    
    func payGoods() {
        self.person?.payGoods()
    }
    

}
