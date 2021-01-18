//
//  Licai.swift
//  geqiangbao_20201124_strategy_swift
//
//  Created by xiaobao on 2020/11/24.
//

import Foundation


//策略接口(协议)

protocol Licai {
    func licaiWithMonth(month:Int,money:Float) -> Float;
}
