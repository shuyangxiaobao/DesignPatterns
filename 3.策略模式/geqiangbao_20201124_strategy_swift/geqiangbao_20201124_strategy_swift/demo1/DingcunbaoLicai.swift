//
//  DingcunbaoLicai.swift
//  geqiangbao_20201124_strategy_swift
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

class DingcunbaoLicai: NSObject,Licai {
    func licaiWithMonth(month: Int, money: Float) -> Float {
        //核心算法
        if month == 3 {
            return money + money * 0.07 / 12 * 3;
        } else if month == 6 {
            return money + money * 0.08 / 12 * 6;
        } else if month == 9 {
            return money + money * 0.09 / 12 * 9;
        } else if month == 12 {
            return money + money * 0.095 / 12 * 12;
        } else if month == 24 {
            return money + money * 0.105 / 12 * 24;
        }
        return 0;
    }
}

