//
//  ComputerFactpry2.swift
//  geqiangbao_20201207_factory_swift
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit

class ComputerFactpry2: NSObject {
    /// 生产华为电脑
    /// - Returns:
    func getHWComputer() -> ComputerProtocol{
        return HWComputer()
    }
    
    /// 生产三星电脑
    /// - Returns:
    func getSXComputer() -> ComputerProtocol{
        return SXComputer()
    }
    
}
