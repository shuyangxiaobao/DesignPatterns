//
//  MainBoard.swift
//  geqiangbao_20201202_mediator_swift
//
//  Created by xiaobao on 2020/12/2.
//

import UIKit

class MainBoard: NSObject,ComputerColleague {
    var mediator: ComputerMediator
    var address:String?

    init(mediator: ComputerMediator) {
        self.mediator = mediator
    }
    
    func mainBoard_fun1(){
        print("访问 mainBoard_fun1 函数")
        self.address = "上海"
        self.mediator.callback(colleague: self)
    }

}
