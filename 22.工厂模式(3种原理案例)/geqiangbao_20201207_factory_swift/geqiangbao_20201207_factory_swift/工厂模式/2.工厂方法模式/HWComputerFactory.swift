//
//  HWComputerFactory.swift
//  geqiangbao_20201207_factory_swift
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit

/// 华为电脑工厂
class HWComputerFactory: NSObject,ComputerFactoryProtocol{
    func getComputer() -> ComputerProtocol {
        return HWComputer()
    }
    

}
