//
//  ComputerFactoryProtocol.swift
//  geqiangbao_20201207_factory_swift
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit

/// 电脑工厂协议
protocol ComputerFactoryProtocol {
    func getComputer() -> ComputerProtocol
}
