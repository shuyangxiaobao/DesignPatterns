//
//  ExpressionProtocol.swift
//  Dream_20180722_Parser
//
//  Created by Dream on 2018/7/22.
//  Copyright © 2018年 Tz. All rights reserved.
//

import UIKit

//抽象表达式
protocol ExpressionProtocol {
    func interpreter(context:Context) -> Float
}
