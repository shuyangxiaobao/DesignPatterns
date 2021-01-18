//
//  BusinessReport.swift
//  geqiangbao_20201201_visotor_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit

class BusinessReport: NSObject {
    
    var arr:Array<ElementProtocol>?
    
    override init() {
        self.arr = Array()
        self.arr?.append(ManagerElement(name: "项目经理1号"))
        self.arr?.append(ManagerElement(name: "项目经理2号"))
        self.arr?.append(ManagerElement(name: "项目经理3号"))
        self.arr?.append(ManagerElement(name: "项目经理4号"))
        self.arr?.append(EngineerElement(name: "工程师1号"))
        self.arr?.append(EngineerElement(name: "工程师2号"))
        self.arr?.append(EngineerElement(name: "工程师3号"))
        self.arr?.append(EngineerElement(name: "工程师4号"))
    }
    
    func showReport(visitor:VisitorProtocol){
        var iterator = self.arr?.makeIterator()
        while let element = iterator?.next() {
            element.acceptVisitor(visitor: visitor)
        }
    }


}
