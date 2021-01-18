//
//  JDQSORiginator.swift
//  geqiangbao_20201127_ memo_swift
//
//  Created by xiaobao on 2020/11/27.
//

import UIKit
//其次：定义一个创建备忘录角色Originator
class JDQSORiginator: NSObject {
    var point:Int
    var level:Int
    override init() {
        self.point = 0
        self.level = 0
    }
    func play(){
        self.point += 100
        self.level += 1
    }
    
    
    /// 创建备忘录
    func createMemo() -> JDQSMemo{
        return JDQSMemo(point: self.point,level: self.level)
    }
    
    
    /// 恢复备忘录
    /// - Parameter memo: <#memo description#>
    func restore(memo:JDQSMemo){
        self.point = memo.point
        self.level = memo.level
    }
    
    func jingdu() {
        print("point = \(self.point)  level= \(self.level)")
    }
    
    
    

    

    
    

}
