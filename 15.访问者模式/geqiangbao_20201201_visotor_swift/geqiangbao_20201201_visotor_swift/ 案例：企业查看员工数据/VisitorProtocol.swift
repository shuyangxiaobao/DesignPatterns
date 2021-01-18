//
//  VisitorProtocol.swift
//  geqiangbao_20201201_visotor_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit
protocol VisitorProtocol {
    
    /// 访问工程师
    /// - Parameter element: <#element description#>
    func visitor(engineer:EngineerElement)
    
    
    /// 访问项目经理
    /// - Parameter element: <#element description#>
    func visitor(manager:ManagerElement)
}









