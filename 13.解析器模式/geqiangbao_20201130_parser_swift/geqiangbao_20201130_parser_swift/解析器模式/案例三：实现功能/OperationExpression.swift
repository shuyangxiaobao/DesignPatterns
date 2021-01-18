//
//  OperationExpression.swift
//  geqiangbao_20201130_parser_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit

class OperationExpression: NSObject,ArithmeticExpressionProtocol {
    var left:ArithmeticExpressionProtocol
    var right:ArithmeticExpressionProtocol
    init(left:ArithmeticExpressionProtocol,right:ArithmeticExpressionProtocol) {
        self.left = left
        self.right = right
    }
    
    func translation() -> Float {
        0
    }
    

}
