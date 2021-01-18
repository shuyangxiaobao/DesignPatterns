//
//  Leaf.swift
//  geqiangbao_20201127_Component_swift
//
//  Created by xiaobao on 2020/11/27.
//

import UIKit

final class Leaf: NSObject,ComponentProtocol {
    var name: String
    
    var components: Array<ComponentProtocol>
    
    init(name: String) {
        self.name = name
        self.components = Array<ComponentProtocol>()
    }
    
    func doSomething() {
        print("节点名称:\(self.name)")
    }
    

}
