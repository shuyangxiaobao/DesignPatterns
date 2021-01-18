//
//  HWComputer.swift
//  geqiangbao_20201207_factory_swift
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit

class HWComputer: NSObject,ComputerProtocol {
    func cpu() {
        print("华为 cpu")
    }
    
    func displaycard() {
        print("华为 显示器")
    }
    
    func mainborad() {
        print("华为 主板")
    }
    

}
