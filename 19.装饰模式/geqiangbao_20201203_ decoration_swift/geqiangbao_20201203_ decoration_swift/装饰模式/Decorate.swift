//
//  Decorate.swift
//  geqiangbao_20201203_ decoration_swift
//
//  Created by xiaobao on 2020/12/3.
//

import UIKit

/// 抽象装饰者
class Decorate: ComponentProtocol {
    var component:ComponentProtocol?
    
    init(component:ComponentProtocol) {
        self.component = component
    }
    func operation() {
        self.component?.operation()
    }

}
