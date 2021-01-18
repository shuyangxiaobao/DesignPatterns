//
//  MacStartUpCommand.swift
//  geqiangbao_20201117_CommandPattern_swift
//
//  Created by xiaobao on 2020/11/17.
//

import Cocoa

class MacStartUpCommand: NSObject,MacComputerProtocol {

    private var computer:MacComputer
    init(_ computer:MacComputer) {
        self.computer = computer;
    }
    func execute() {
        self.computer.startUp()
    }
}
