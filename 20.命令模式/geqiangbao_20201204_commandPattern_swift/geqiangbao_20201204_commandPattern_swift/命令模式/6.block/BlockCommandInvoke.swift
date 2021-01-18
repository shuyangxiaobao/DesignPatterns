//
//  BlockCommandInvoke.swift
//  geqiangbao_20201204_commandPattern_swift
//
//  Created by xiaobao on 2020/12/4.
//

import UIKit

class BlockCommandInvoke: NSObject {
    
    typealias BlockCommand = ( (MacComputer) -> Void )
    var computer:MacComputer
    var commands:Array<BlockCommand>
    
//    使用队列
    private var queue = DispatchQueue(label: "Command")

    
    init(computer:MacComputer) {
        self.computer = computer
        self.commands = Array()
    }
    
    func start(){
        self.computer.start()
        self.queue.sync {
            self.commands.append { (mac) in
                mac.undoStart()
            }
        }
        
    }
    
    func shutdown(){
        self.computer.shutdown()
        self.queue.sync {
            self.commands.append { (mac) in
                mac.undoShutdown()
            }
        }
    }
    
    func undo(){
        self.commands.removeLast()(self.computer)
    }
    
    func undoAll(){
        for block in self.commands.reversed() {
            block(self.computer)
        }
        self.commands.removeAll()
    }
    

}
