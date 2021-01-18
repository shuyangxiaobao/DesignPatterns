//
//  BaseElement.swift
//  geqiangbao_20201201_visotor_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit

class BaseElement: NSObject,ElementProtocol {

    var name:String?
    var kpi:Float?
    
    init(name:String) {
        self.name = name
        self.kpi = Float(arc4random() % 10000)
    }
    
    /// 接受访问
    /// - Parameter visitor: <#visitor description#>
    /// - Returns: <#description#>
    func acceptVisitor(visitor:VisitorProtocol) -> Void {
    }
    
    
    
}
