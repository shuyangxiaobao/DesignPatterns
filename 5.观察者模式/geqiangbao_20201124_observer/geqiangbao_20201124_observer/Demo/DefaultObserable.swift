//
//  DefaultObserable.swift
//  geqiangbao_20201124_observer
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

//具体被观察者->NSLog同学(抽象出来->统一管理)(万能)
class DefaultObserable: Observable {
    
    private var obs = Array<Observer>()
    private var changed:Bool = false

    func addObserver(observer:Observer){
        self.obs.append(observer)
    }
    func removeObserver(observer:Observer){
        //指定删除
        self.obs.removeLast()
        
    }
    func notifyObserver(){
        notifyObserver(msg: nil)
    }
    func notifyObserver(msg:Any?){
        if !self.changed {
            //更新数据->消息
            return
        }
        //修改状态
        self.clearChanged()
        //循环通知->语法
        self.obs.forEach { (o) in
            o.update(obserable: self, msg: msg)
        }
    }
    func countObserver() -> Int{
        return self.obs.count
    }
    func setChanged(){
        self.changed = true
    }
    func clearChanged(){
        self.changed = false
    }
    func hasChanged() -> Bool {
        return self.changed
    }
    
    
}
