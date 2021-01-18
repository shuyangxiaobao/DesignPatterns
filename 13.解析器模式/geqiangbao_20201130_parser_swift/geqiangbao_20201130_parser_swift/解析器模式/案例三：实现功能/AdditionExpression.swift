//
//  AdditionExpression.swift
//  geqiangbao_20201130_parser_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit


/// 加法
class AdditionExpression: OperationExpression {

    override func translation() -> Float {
        return self.left.translation() + self.right.translation()
    }
}
