//
//  ComputerFactpry3.swift
//  geqiangbao_20201207_factory_swift
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit

class ComputerFactpry3: NSObject {
    /// 生产华为电脑
    /// - Returns:
    static func getHWComputer() -> ComputerProtocol{
        return HWComputer()
    }
    
    /// 生产三星电脑
    /// - Returns:
    static func getSXComputer() -> ComputerProtocol{
        return SXComputer()
    }
    
}
