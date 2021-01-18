//
//  HWFactory.swift
//  geqiangbao_20201207_factory_swift
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit

/// 华为工厂
class HWFactory: NSObject,FactoryProtocol {

    func getComputer() -> ComputerProtocol {
        return HWComputer()
    }
    
    func getMobilePhone() -> MobilePhoneProtocol {
        return HWMobilePhone()
    }
    
}
