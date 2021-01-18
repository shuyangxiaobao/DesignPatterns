//
//  MacInvoker.swift
//  geqiangbao_20201117_CommandPattern_swift
//
//  Created by xiaobao on 2020/11/17.
//

import Cocoa

class MacInvoker: NSObject {

    private var startUpCommand:MacStartUpCommand
    private var shutDownCommand:MacShutDownCommand
    private var computer:MacComputer
    
    init(_ startUpCommand:MacStartUpCommand, _ shutDownCommand:MacShutDownCommand, _ computer:MacComputer) {
        self.computer = computer;
        self.startUpCommand = MacStartUpCommand(self.computer)
        self.shutDownCommand = MacShutDownCommand(self.computer)
    }  
    
    func startUp(){
        self.startUpCommand.execute()
    }
    
    func shutDown(){
        self.shutDownCommand.execute()
    }

}
