//
//  MacInvoker.swift
//  geqiangbao_20201204_commandPattern_swift
//
//  Created by xiaobao on 2020/12/4.
//

import UIKit

typealias BlockCommand = ( (MacComputer) -> Void )
/// 角色四:请求者
class MacInvoker: NSObject {
    var startCommand:ComputerCommandProtocol?
    var shutdownCommand:ComputerCommandProtocol?
    var commands:Array<ComputerCommandProtocol>
    var commands2:Array<BlockCommand>

    var computer:MacComputer?
    init(computer:MacComputer) {
        self.startCommand = MacStartCommand(computer: computer)
        self.shutdownCommand = ShutDownCommand(computer: computer)
        self.computer = computer
        self.commands = Array()
        self.commands2 = Array()

    }
    
    func start(){
        self.startCommand?.execute()
        self.commands.append(MacStartCommand(computer: self.computer!))
        self.commands2.append { (com) in
            print("现在开始撤销")
            com.start()
            print("撤销结束")
        }
    }
    
    func shutdown(){
        self.shutdownCommand?.execute()
        self.commands.append(ShutDownCommand(computer: self.computer!))
        self.commands2.append { (com) in
            print("现在开始撤销")
            com.shutdown()
            print("撤销结束")
        }
    }
    
    
    
    /// 撤销一个
    func undo(){
        self.commands.removeLast().execute()
        guard let computer = self.computer else {
            return
        }
        self.commands2.removeLast()(computer)

    }
    
    
    /// 撤销全部
    func undoAll(){
        for element in self.commands.reversed() {
            element.execute()
        }
        self.commands.removeAll()
    }
    
    

    

}
