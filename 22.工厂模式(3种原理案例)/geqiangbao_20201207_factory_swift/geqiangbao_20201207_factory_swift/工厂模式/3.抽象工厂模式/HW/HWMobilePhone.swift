//
//  HWMobilePhone.swift
//  geqiangbao_20201207_factory_swift
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit

/// 华为手机
class HWMobilePhone: NSObject,MobilePhoneProtocol {
    func start() {
        print("华为手机 开机")
    }
    
    func end() {
        print("华为手机 关机")
    }
    

}
