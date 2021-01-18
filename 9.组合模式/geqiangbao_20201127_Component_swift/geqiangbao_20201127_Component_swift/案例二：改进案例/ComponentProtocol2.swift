//
//  ComponentProtocol2.swift
//  geqiangbao_20201127_Component_swift
//
//  Created by xiaobao on 2020/11/27.
//

import Foundation

//根节点有几个特点需要注意(父节点根据你的设计决定)
protocol ComponentProtocol2 {
    //特点一：节点名字
    var name:String{get}
    //特点二：子节点(数组)
    var components:Array<ComponentProtocol2>{get}
    //特点三：业务逻辑
    func doSomthing()
    
    func addChild(child:ComponentProtocol2)
    func removeChild(child:ComponentProtocol2)
    func getChild(index:Int) -> ComponentProtocol2
    func clear()
    
    
}
