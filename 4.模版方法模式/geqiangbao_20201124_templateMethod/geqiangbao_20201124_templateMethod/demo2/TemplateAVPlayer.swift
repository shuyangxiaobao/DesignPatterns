//
//  TemplateAVPlayer.swift
//  Dream_20180713_TemplateMethod
//
//  Created by Dream on 2018/7/13.
//  Copyright © 2018年 Tz. All rights reserved.
//

import UIKit

//模版类
//模版方法特点(原则->太监方法):不允许继承和重写->final关键字(final：最终)
//算法结构固定，不允许修改(规则)
class TemplateAVPlayer: NSObject {
    
    public var delegate:AVPlayerDelegate?

    //定义模版方法->提供给外部
    final func play(controller:UIViewController, frame:CGRect, url:String){
        self.create(url: url)
        self.prepare(controller: controller, frame: frame)
        self.observer()
        self.paly()
    }
    
    //模版方法
    func create(url:String) {
        
    }
    
    //模版方法
    func prepare(controller:UIViewController, frame:CGRect) {
        
    }
    
    //模版方法
    func observer() {
        
    }
    
    //模版方法
    func paly() {
        
    }
    
    func pause() {
        
    }
    
    func stop() {
        
    }
    
    
}
