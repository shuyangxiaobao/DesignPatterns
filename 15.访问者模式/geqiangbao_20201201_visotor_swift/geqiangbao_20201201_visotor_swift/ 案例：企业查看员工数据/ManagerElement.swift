//
//  ManagerElement.swift
//  geqiangbao_20201201_visotor_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit


/// 项目经理
class ManagerElement: BaseElement {
    /// 项目数量
    var productCount:Int
    
    override init(name: String) {
        self.productCount = Int(arc4random()%10 + 2)
        super.init(name: name)
    }
    
    override func acceptVisitor(visitor: VisitorProtocol) {
        visitor.visitor(manager: self)
    }
    
    
    
    
    
}
