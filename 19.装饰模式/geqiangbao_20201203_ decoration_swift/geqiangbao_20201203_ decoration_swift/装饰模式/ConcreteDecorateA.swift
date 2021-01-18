//
//  ConcreteDecorateA.swift
//  geqiangbao_20201203_ decoration_swift
//
//  Created by xiaobao on 2020/12/3.
//

import UIKit

/// 具体装饰者
class ConcreteDecorateA: Decorate {
    
    override init(component: ComponentProtocol) {
        super.init(component: component)
    }
    
    func method1(){
        print("ConcreteDecorateA method1 装饰");
    }
    
    override func operation() {
        self.method1()
        super.operation()
    }

}
