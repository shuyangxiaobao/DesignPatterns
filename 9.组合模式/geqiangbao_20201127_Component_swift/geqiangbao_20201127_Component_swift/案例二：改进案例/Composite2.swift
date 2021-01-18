//
//  Composite2.swift
//  geqiangbao_20201127_Component_swift
//
//  Created by xiaobao on 2020/11/27.
//

import UIKit

class Composite2: ComponentProtocol2 {

    var name: String
    var components:Array<ComponentProtocol2>
    
    init(name:String) {
        self.name = name
        self.components = Array<ComponentProtocol2>()
    }
    
    func doSomthing() {
        print("节点名称：\(self.name)")
    }
    
    //添加
    func addChild(child:ComponentProtocol2) {
        self.components.append(child)
    }
    
    //删除
    func removeChild(child:ComponentProtocol2){
        for index in 0...self.components.count - 1 {
            if self.components[index].name == child.name {
                self.components.remove(at: index)
                break
            }
        }
    }
    
    //得到
    func getChild(index:Int) -> ComponentProtocol2 {
        return self.components[index]
    }
    
    //清空
    func clear() {
        self.components.removeAll()
    }
    
}

