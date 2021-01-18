//
//  ComputerFactpry.swift
//  geqiangbao_20201207_factory_swift
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit


/// 电脑工厂
class ComputerFactpry: NSObject {

    func getComputer(type:String) -> ComputerProtocol?{
        if type == "SXComputer" {
            return SXComputer()
        } else if type == "HWComputer"{
            return HWComputer()
        } else {
            print("错误类型")
            return nil
        }
    }
}
