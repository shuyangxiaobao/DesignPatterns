//
//  CloneableProtocol.swift
//  geqiangbao_20201126_cloneable_swift
//
//  Created by xiaobao on 2020/11/26.
//

import UIKit

protocol CloneableProtocol {
    associatedtype T
    func clone() -> T
}
