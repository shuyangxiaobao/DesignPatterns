//
//  TvController.swift
//  geqiangbao_20201130_state_swift
//
//  Created by xiaobao on 2020/11/30.
//

import UIKit

//电视遥控器
class TvController: NSObject {

    //开机状态
    private let POWER_ON:Int = 1
    //关机状态
    private let POWER_OFF:Int = 1
    //当前状态
    private var state:Int
    
    override init() {
        self.state = POWER_ON
        super.init()
    }
    
    //开机
    func powerOn() {
        self.state = POWER_ON
        print("开启啦")
    }
    
    //关机
    func powerOff() {
        self.state = POWER_OFF
        print("关机啦")
    }
    
    //下一个频道
    func nextChannel() {
        if self.state == POWER_ON {
            print("下一个频道")
        } else {
            print("没有开机")
        }
    }
    
    //上一个频道
    func preChannel() {
        if self.state == POWER_ON {
            print("下一个频道")
        } else {
            print("没有开机")
        }
    }
    
    //调高音量
    func turnUp() {
        if self.state == POWER_ON {
            print("跳高音量")
        } else {
            print("没有开机")
        }
    }
    
    //调低音量
    func turnDown() {
        if self.state == POWER_ON {
            print("跳低音量")
        } else {
            print("没有开机")
        }
    }
    
}
