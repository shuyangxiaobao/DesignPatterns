//
//  EngineerElement.swift
//  geqiangbao_20201201_visotor_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit


/// 工程师
class EngineerElement: BaseElement {

    
    /// 代码行数
    var codeLines:Int
    
    
    override init(name: String) {
        self.codeLines = Int(arc4random()%1000)
        super.init(name: name)
    }
    
    override func acceptVisitor(visitor: VisitorProtocol) {
        visitor.visitor(engineer: self)
    }
    
    
}
