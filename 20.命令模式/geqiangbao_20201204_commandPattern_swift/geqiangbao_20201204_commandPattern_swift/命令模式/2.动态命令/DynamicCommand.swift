//
//  DynamicCommand.swift
//  geqiangbao_20201204_commandPattern_swift
//
//  Created by xiaobao on 2020/12/4.
//

import UIKit

/// 动态命令
class DynamicCommand: CommandProtocol {
    private var computer:MacComputer
    private var block:(MacComputer) ->()
    
    init(computer:MacComputer,block:@escaping (MacComputer) ->()) {
        self.computer = computer
        self.block = block
    }
    
    func execute() {
        self.block(self.computer)
    }
    
    class func createCommand(computer:MacComputer,block:@escaping (MacComputer) ->()) -> CommandProtocol{
        return DynamicCommand(computer: computer, block: block)
    }
}
