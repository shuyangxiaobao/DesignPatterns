//
//  SXComputerFactory.swift
//  geqiangbao_20201207_factory_swift
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit

/// 三星电脑工厂
class SXComputerFactory: NSObject,ComputerFactoryProtocol {
    func getComputer() -> ComputerProtocol {
        return SXComputer()
    }
    

}
