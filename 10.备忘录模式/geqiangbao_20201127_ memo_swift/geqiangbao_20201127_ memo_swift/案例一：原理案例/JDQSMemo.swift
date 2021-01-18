//
//  JDQSMemo.swift
//  geqiangbao_20201127_ memo_swift
//
//  Created by xiaobao on 2020/11/27.
//

import UIKit


/// 绝地求生备忘录
//首先：定义一个备忘录->JDQS(备忘录角色)
class JDQSMemo: NSObject,NSCopying {
    func copy(with zone: NSZone? = nil) -> Any {
        JDQSMemo(point: self.point, level: self.level)
    }
    
    
    var point:Int
    var level:Int
    init(point:Int,level:Int) {
        self.point = point
        self.level = level
    }
    
    

}
