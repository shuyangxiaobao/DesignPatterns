//
//  MacStartCommand.swift
//  geqiangbao_20201204_commandPattern_swift
//
//  Created by xiaobao on 2020/12/4.
//

import UIKit

/// 角色三:具体命令
class MacStartCommand: NSObject,ComputerCommandProtocol {
    private var computer:MacComputer
    
    init(computer:MacComputer) {
        self.computer = computer
    }
    
    func execute() {
        self.computer.start()
    }
    

}
