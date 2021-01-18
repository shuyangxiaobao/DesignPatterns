//
//  ComputerBuilderprotocol.swift
//  geqiangbao_20201124_Builder_Swift
//
//  Created by xiaobao on 2020/12/4.
//

import Foundation
//第二步：抽象构建者类
protocol ComputerBuilderprotocol {
    func setUsbCount()
    
    func setKeyboard()
    
    func setDisplay()
    
    func getComputer() -> Computer2
}
