//
//  SXComputer.swift
//  geqiangbao_20201207_factory_swift
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit

class SXComputer: NSObject,ComputerProtocol {
    func cpu() {
        print("三星 cpu")
    }
    
    func displaycard() {
        print("三星 显示器")
    }
    
    func mainborad() {
        print("三星 主板")
    }
    

}
