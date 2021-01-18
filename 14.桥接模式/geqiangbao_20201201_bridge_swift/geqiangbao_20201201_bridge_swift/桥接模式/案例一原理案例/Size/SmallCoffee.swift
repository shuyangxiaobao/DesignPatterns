//
//  SmallCoffee.swift
//  geqiangbao_20201201_bridge_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit

class SmallCoffee: Coffee {

    override func makeCoffee() {
        let a = "小杯" + (self.additive?.getContent() ?? "") + "咖啡"
        print(a)
    }
}
