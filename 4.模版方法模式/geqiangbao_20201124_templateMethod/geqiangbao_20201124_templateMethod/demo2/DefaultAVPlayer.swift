//
//  DefaultAVPlayer.swift
//  Dream_20180713_TemplateMethod
//
//  Created by Dream on 2018/7/13.
//  Copyright © 2018年 Tz. All rights reserved.
//

import UIKit
import AVFoundation

class DefaultAVPlayer: TemplateAVPlayer {
    
    private var player:AVPlayer?
    private var playerItem:AVPlayerItem?

    override func create(url: String) {
        //1、创建播放器
        self.playerItem = AVPlayerItem(url: URL(fileURLWithPath: url))
        self.player = AVPlayer(playerItem: self.playerItem)
    }
    
    override func prepare(controller: UIViewController, frame: CGRect) {
        //2.1 创建图层
        let playerLayer = AVPlayerLayer(player: self.player)
        playerLayer.frame = frame
        controller.view.layer.addSublayer(playerLayer)
    }
    
    override func observer() {
        //2.2 设置监听
        NotificationCenter.default.addObserver(self, selector: #selector(stop), name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil)
        //2.3 添加监听
        self.playerItem?.addObserver(self, forKeyPath: "status", options: NSKeyValueObservingOptions.new, context: nil)
    }
    
    override func paly() {
        self.player?.play()
    }
    
    //语法
    @objc override func stop() {
        
    }
    
    //播放器状态改变
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        print("回调了...")
        if keyPath == "status" {
            //设置监听->外部处理
            self.delegate?.playerCall(status: self.playerItem?.status)
            if self.playerItem?.status == AVPlayerItem.Status.failed {
                print("加载错误")
            } else if self.playerItem?.status == AVPlayerItem.Status.unknown {
                print("未知错误")
            } else {
                print("播放正常...")
            }
        }
    }
    
    //析构函数
    deinit {
        //释放资源
        NotificationCenter.default.removeObserver(self, name: NSNotification.Name.AVPlayerItemDidPlayToEndTime, object: nil)
        self.playerItem?.removeObserver(self, forKeyPath: "status")
    }
    
}
