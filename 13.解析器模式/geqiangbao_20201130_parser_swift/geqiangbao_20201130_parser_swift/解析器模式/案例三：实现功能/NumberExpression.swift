//
//  NumberExpression.swift
//  geqiangbao_20201130_parser_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit

class NumberExpression: NSObject,ArithmeticExpressionProtocol {

    var number:Float
    init(number:Float) {
        self.number = number
    }
    
    func translation() -> Float {
        return self.number
    }
}
