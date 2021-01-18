//
//  ConcreteComponent.swift
//  geqiangbao_20201203_decoration_swift
//
//  Created by xiaobao on 2020/12/3.
//

import UIKit

/// 具体组件
class ConcreteComponent: NSObject,ComponentProtocol {
    func operation() {
        print("具体的对象操作")
    }
    

}
