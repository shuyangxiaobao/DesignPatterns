//
//  SXMobilePhone.swift
//  geqiangbao_20201207_factory_swift
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit

class SXMobilePhone: NSObject,MobilePhoneProtocol {
    func start() {
        print("三星手机开机")
    }
    
    func end() {
        print("三星手机关机")
    }
}
