//
//  ConcreteDecorateB.swift
//  geqiangbao_20201203_ decoration_swift
//
//  Created by xiaobao on 2020/12/3.
//

import UIKit

class ConcreteDecorateB: Decorate {
    
    override init(component: ComponentProtocol) {
        super.init(component: component)
    }

    override func operation() {
        self.demoB()
        super.operation()
    }
    
    func demoB(){
        print("ConcreteDecorateB 装饰者模式 demoB")
    }

}
