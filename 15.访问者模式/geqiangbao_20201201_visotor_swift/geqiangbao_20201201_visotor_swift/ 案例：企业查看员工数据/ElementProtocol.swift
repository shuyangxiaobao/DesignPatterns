//
//  ElementProtocol.swift
//  geqiangbao_20201201_visotor_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit

protocol ElementProtocol {
    /// 接受访问
    /// - Parameter visitor: <#visitor description#>
    /// - Returns: <#description#>
    func acceptVisitor(visitor:VisitorProtocol) -> Void
}

