//
//  WrapperCommandInvoker.swift
//  geqiangbao_20201204_commandPattern_swift
//
//  Created by xiaobao on 2020/12/4.
//

import UIKit

/// 请求者
class WrapperCommandInvoker: NSObject {
    private var computer:MacComputer
    var commands:Array<DynamicCommand>
    
    init(computer:MacComputer) {
        self.computer = computer
        self.commands = Array()
    }
    
    func start(){
        self.computer.start()
        self.commands.append(DynamicCommand(computer: self.computer, block: { (comp) in
            comp.undoStart()
        }))
    }
    
    func shutdown(){
        self.computer.shutdown()
        self.commands.append(DynamicCommand(computer: self.computer, block: { (comp) in
            comp.undoShutdown()
        }))
    }
    
    
    /// 撤销一步
    func undo(){
        self.commands.removeLast().execute()
    }
    
    
    func undoAll(){
        WrapperCommand(commands: self.commands).execute()
        self.commands.removeAll()
        
    }
    
    
    
    
    
    
    

}
