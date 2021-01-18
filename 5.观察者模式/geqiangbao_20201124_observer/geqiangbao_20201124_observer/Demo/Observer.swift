//
//  Observer.swift
//  geqiangbao_20201124_observer
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

//观察者
protocol Observer {
    func update(obserable:Observable, msg:Any?)
}
