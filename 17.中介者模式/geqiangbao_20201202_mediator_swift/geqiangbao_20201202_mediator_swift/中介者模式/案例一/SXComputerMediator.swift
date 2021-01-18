//
//  SXComputerMediator.swift
//  geqiangbao_20201202_mediator_swift
//
//  Created by xiaobao on 2020/12/2.
//

import UIKit

class SXComputerMediator: NSObject,ComputerMediator {
    var cpu:ComputerColleague?
    var mainBoard:ComputerColleague?

    
    override init() {
        super.init()
        self.cpu = Cpu(mediator: self)
        self.mainBoard = MainBoard(mediator: self)
    }
    
    func play_cpu(){
        (self.cpu as? Cpu)?.cpu_fun1()
    }
    
    func play_mainBoard(){
        (self.mainBoard as? MainBoard)?.mainBoard_fun1()
    }
    

    
    func callback(colleague: ComputerColleague) {
        if colleague is Cpu {
            (self.mainBoard as? MainBoard)?.mainBoard_fun1()
        } else if colleague is MainBoard{
//            (self.cpu as? Cpu)?.cpu_fun1()
        }
    }
    

}
