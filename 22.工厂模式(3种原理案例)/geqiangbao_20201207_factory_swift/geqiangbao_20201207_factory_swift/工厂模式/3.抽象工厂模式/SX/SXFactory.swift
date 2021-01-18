//
//  SXFactory.swift
//  geqiangbao_20201207_factory_swift
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit


/// 三星工厂
class SXFactory: FactoryProtocol {
    func getComputer() -> ComputerProtocol {
        return SXComputer()
    }
    
    func getMobilePhone() -> MobilePhoneProtocol {
        return SXMobilePhone()
    }
    

}
