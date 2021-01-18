//
//  GameImpl.swift
//  geqiangbao_20201202_facade_swift
//
//  Created by xiaobao on 2020/12/2.
//

import UIKit

class GameImpl: NSObject,GameProtocol {
    func startGame() {
        print("启动游戏")
    }
    
    func play() {
        print("打游戏")
    }
    
    func endGame() {
        print("结束游戏")
    }
    

}
