//
//  Computer.swift
//  geqiangbao_20201202_facade_swift
//
//  Created by xiaobao on 2020/12/2.
//

import UIKit

class Computer: NSObject {
    var game:GameProtocol
    var camera:CameraProtocol
    var music:MusicProtocol
    
    
    override init() {
        self.game = GameImpl()
        self.camera = CameraImpl()
        self.music = MusicImpl()
    }
    
    func paizhao(){
        self.camera.openCamera()
        self.camera.takePicuure()
    }
    
    func playGame(){
        self.game.startGame()
        self.game.play()
    }
    
    func listenMusic(){
        self.music.startMusic()
        self.music.playMusic()
    }


}
