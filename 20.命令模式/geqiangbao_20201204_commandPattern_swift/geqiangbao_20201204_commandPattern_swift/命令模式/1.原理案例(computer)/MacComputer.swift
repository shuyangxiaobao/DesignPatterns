//
//  MacComputer.swift
//  geqiangbao_20201204_commandPattern_swift
//
//  Created by xiaobao on 2020/12/4.
//

import UIKit


/// 角色一 接收者
class MacComputer: NSObject {
    
    func start(){
        print("mac 开机")
    }
    
    func shutdown(){
        print("mac 关机")
    }
    
    func undoStart(){
        print("撤销mac 开机")
    }
    
    func undoShutdown(){
        print("撤销mac 关机")
    }
    
    


}
