//
//  Composite.swift
//  geqiangbao_20201127_Component_swift
//
//  Created by xiaobao on 2020/11/27.
//

import UIKit


//具体子节点
class Composite: NSObject,ComponentProtocol {
    var name: String = ""
    
    var components: Array<ComponentProtocol> = []
    
    init(name: String) {
        self.name = name
    }
    
    func doSomething() {
        print("q345")
    }
//   添加
    func addComponent(child:ComponentProtocol){
        self.components.append(child)
    }

//   删除
    func removeCoponent(child:ComponentProtocol){
        var iterator = self.components.makeIterator()
        var model:ComponentProtocol?
        var index = -1
        while true {
            model = iterator.next()
            if model == nil {
                break
            }
            index += 1
            if model?.name == child.name {
                self.components.remove(at: index)
                break
            }
        }
    }
//    获取
    func get(index:Int) -> ComponentProtocol?{
        if index < self.components.count {
            return self.components[index]
        }
        return nil
    }
    
    
    /// 清空
    func clear(){
        self.components.removeAll()
    }


    
    

}

//NSString *priceTick = [[QDSettingManager shareInstance]getPriceTick_exchangeId:model.exchangeId instrumentId:model.instrumentId];

