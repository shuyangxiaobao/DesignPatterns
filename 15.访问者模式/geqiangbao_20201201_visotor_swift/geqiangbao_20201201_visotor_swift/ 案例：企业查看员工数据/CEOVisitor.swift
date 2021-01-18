//
//  CEOVisitor.swift
//  geqiangbao_20201201_visotor_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit

class CEOVisitor: VisitorProtocol {
    func visitor(engineer: EngineerElement) {
        let a = "kpi:" + String(engineer.kpi!) + "  " + "name:" + (engineer.name ?? "")
        print(a)
    }
    
    func visitor(manager: ManagerElement) {
        let a = "kpi:" + String(manager.kpi!) + "  " + "name:" + (manager.name ?? "")
        print(a)
    }
    
}
