//
//  FactoryProtocol.swift
//  geqiangbao_20201207_factory_swift
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit

/// 工厂协议
protocol FactoryProtocol {
    
    /// 生产电脑
    func getComputer() -> ComputerProtocol
    
    /// 生产手机
    func getMobilePhone() -> MobilePhoneProtocol

}

