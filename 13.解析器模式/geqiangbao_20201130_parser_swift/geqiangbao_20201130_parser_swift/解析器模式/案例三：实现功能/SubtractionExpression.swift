//
//  SubtractionExpression.swift
//  geqiangbao_20201130_parser_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit

/// 减法
class SubtractionExpression: OperationExpression {
    override func translation() -> Float {
        return left.translation() - right.translation()
    }
}
