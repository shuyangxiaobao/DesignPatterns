//
//  QueueCommandInvoke.swift
//  geqiangbao_20201204_commandPattern_swift
//
//  Created by xiaobao on 2020/12/4.
//

import UIKit

class QueueCommandInvoke: NSObject {
    var computer:MacComputer
    var commands:Array<CommandProtocol>
    
//    使用队列
    private var queue = DispatchQueue(label: "Command")

    
    init(computer:MacComputer) {
        self.computer = computer
        self.commands = Array()
    }
    
    func start(){
        self.computer.start()
        self.queue.sync {
            self.commands.append(GeneralCommand.createCommand(receiver: self.computer, block: { (comp) in
                comp.undoStart()
            }))
        }
        
    }
    
    func shutdown(){
        self.computer.shutdown()
        self.queue.sync {
            self.commands.append(GeneralCommand.createCommand(receiver: self.computer, block: { (comp) in
                comp.undoShutdown()
            }))
        }
    }
    
    func undo(){
        self.commands.removeLast().execute()
    }
    
    func undoAll(){
        for command in self.commands.reversed() {
            command.execute()
        }
        self.commands.removeAll()
    }
    

}
