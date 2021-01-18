//
//  TvControllerContext.swift
//  geqiangbao_20201130_state_swift
//
//  Created by xiaobao on 2020/11/30.
//

import UIKit

class TvControllerContext: NSObject {
    private var state:StateProtocol?
    
    override init() {
        self.state = OffState()
    }
    
    /// 开机
    func powerOn() {
        print("开机")
        self.state = OnState()
    }
    
    ///关机
    func powerOff() {
        print("关机")
        self.state = OffState()
    }
    ///下一个频道
    func nextChannel(){
        self.state?.nextChannel()
    }
    ///上一个频道
    func preChannel(){
        self.state?.preChannel()
    }
    ///调高音量
    func turnUp(){
        self.state?.turnUp()
    }
    ///调低音量
    func turnDown(){
        self.state?.turnDown()
    }
    

}
