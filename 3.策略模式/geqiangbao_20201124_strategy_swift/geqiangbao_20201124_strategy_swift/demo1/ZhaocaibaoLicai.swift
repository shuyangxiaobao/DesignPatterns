//
//  ZhaocaibaoLicai.swift
//  geqiangbao_20201124_strategy_swift
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

class ZhaocaibaoLicai: NSObject,Licai {
    func licaiWithMonth(month: Int, money: Float) -> Float {
        //核心算法
        if month == 6 {
            return money + money * 0.03 / 12 * 6;
        } else if month == 12 {
            return money + money * 0.04 / 12 * 12;
        } else if month == 24 {
            return money + money * 0.045 / 12 * 24;
        }
        return 0;
    }
}
