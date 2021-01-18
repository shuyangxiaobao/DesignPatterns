//
//  GeneralCommand.swift
//  geqiangbao_20201204_commandPattern_swift
//
//  Created by xiaobao on 2020/12/4.
//

import UIKit

class GeneralCommand<T>: CommandProtocol {
    var receiver:T
    var block:(T)->()
    
    init(receiver:T,block:@escaping (T)->()) {
        self.receiver = receiver
        self.block = block
    }
    
    func execute() {
        self.block(self.receiver)
    }
    
    class func createCommand(receiver:T,block:@escaping (T)->()) -> CommandProtocol{
        return GeneralCommand(receiver: receiver, block: block)
    }
    
    
    

}
