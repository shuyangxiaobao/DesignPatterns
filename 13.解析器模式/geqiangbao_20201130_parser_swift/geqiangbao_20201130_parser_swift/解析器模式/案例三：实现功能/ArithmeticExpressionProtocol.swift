//
//  ArithmeticExpressionProtocol.swift
//  geqiangbao_20201130_parser_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit

// 算术运算符 -> 算数表达式(抽象)
protocol ArithmeticExpressionProtocol {
    func translation() -> Float
}
