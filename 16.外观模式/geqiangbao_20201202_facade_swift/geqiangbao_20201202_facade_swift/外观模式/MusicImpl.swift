//
//  MusicImpl.swift
//  geqiangbao_20201202_facade_swift
//
//  Created by xiaobao on 2020/12/2.
//

import UIKit

class MusicImpl: NSObject,MusicProtocol {
    func startMusic() {
        print("开始音乐")
    }
    
    func playMusic() {
        print("播放音乐")
    }
    
    func closeMusic() {
        print("关闭音乐")
    }
    

    
}
