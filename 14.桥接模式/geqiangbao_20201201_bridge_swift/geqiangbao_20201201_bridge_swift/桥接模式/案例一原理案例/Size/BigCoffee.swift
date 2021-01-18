//
//  BigCoffee.swift
//  geqiangbao_20201201_bridge_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit

class BigCoffee: Coffee {
    
    override func makeCoffee() {
        let a = "大杯" + (self.additive?.getContent() ?? "") + "咖啡"
        print(a)
    }

}
