//
//  WrapperCommand.swift
//  geqiangbao_20201204_commandPattern_swift
//
//  Created by xiaobao on 2020/12/4.
//

import UIKit

class WrapperCommand: CommandProtocol {
    var commands:Array<CommandProtocol>
    
    init(commands:Array<CommandProtocol>) {
        self.commands = commands
    }
    
    func execute() {
        for command in self.commands.reversed() {
            command.execute()
        }
    }
    
}
