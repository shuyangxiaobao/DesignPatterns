//
//  Leaf2.swift
//  geqiangbao_20201127_Component_swift
//
//  Created by xiaobao on 2020/11/27.
//

import UIKit

final class Leaf2: ComponentProtocol2 {

    var name: String
    var components:Array<ComponentProtocol2>
    
    init(name:String) {
        self.name = name
        self.components = Array<ComponentProtocol2>()
    }
    
    //做异常处理
    
    func doSomthing() {
        print("节点名称：\(self.name)")
    }
    
    //添加
    func addChild(child:ComponentProtocol2) {
        print("发送错误，叶子节点没有子节点...")
    }
    
    //删除
    func removeChild(child:ComponentProtocol2){
        print("发送错误，叶子节点没有子节点...")
    }
    
    //得到
    func getChild(index:Int) -> ComponentProtocol2 {
        print("发送错误，叶子节点没有子节点...")
        //抛异常
        return self.components[index]
    }
    
    //清空
    func clear() {
        print("发送错误，叶子节点没有子节点...")
    }
    
}
