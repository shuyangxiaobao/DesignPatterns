//
//  CTOVisitor.swift
//  geqiangbao_20201201_visotor_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit

class CTOVisitor: VisitorProtocol {
    func visitor(engineer: EngineerElement) {
        let a = "代码行数:" + String(engineer.codeLines) + "  " + "name:" + (engineer.name ?? "")
        print(a)
    }
    
    func visitor(manager: ManagerElement) {
        let a = "项目数量:" + String(manager.productCount) + "  " + "name:" + (manager.name ?? "")
        print(a)
    }
    

}
