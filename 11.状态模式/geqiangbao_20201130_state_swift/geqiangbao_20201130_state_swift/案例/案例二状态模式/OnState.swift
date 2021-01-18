//
//  OnState.swift
//  geqiangbao_20201130_state_swift
//
//  Created by xiaobao on 2020/11/30.
//

import UIKit

class OnState: NSObject,StateProtocol {
    func nextChannel() {
        print("下一个频道")
    }
    
    func preChannel() {
        print("上一个频道")

    }
    
    func turnUp() {
        print("调高音量")

    }
    
    func turnDown() {
        print("调低音量")

    }
    
}
