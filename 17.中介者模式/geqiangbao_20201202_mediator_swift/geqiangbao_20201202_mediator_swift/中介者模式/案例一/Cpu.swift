//
//  Cpu.swift
//  geqiangbao_20201202_mediator_swift
//
//  Created by xiaobao on 2020/12/2.
//

import UIKit

class Cpu: NSObject,ComputerColleague {
    var mediator: ComputerMediator
    var name:String?
    
    init(mediator: ComputerMediator) {
        self.mediator = mediator
    }
    
    func cpu_fun1(){
        print("访问 cpu_fun1 函数")
        self.name = "cpu name"
        self.mediator.callback(colleague: self)
    }

    

}
