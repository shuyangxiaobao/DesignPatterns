//
//  StateProtocol.swift
//  geqiangbao_20201130_state_swift
//
//  Created by xiaobao on 2020/11/30.
//

import UIKit

protocol StateProtocol {
    //下一个频道
    func nextChannel()
    //上一个频道
    func preChannel()
    //调高音量
    func turnUp()
    //调低音量
    func turnDown()
}

