//
//  IEncryption.swift
//  geqiangbao_20201124_strategy_swift
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

//策略接口
protocol IEncryption {
    //加密
    func encrypt(data:String,key:String) -> String;
    //解密
    func decrypt(data:String,key:String) -> String;
}
