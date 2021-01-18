//
//  ParserContext2.swift
//  geqiangbao_20201130_parser_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit

class ParserContext2: NSObject {
    var expressions = Array<ArithmeticExpressionProtocol>()
    func translation(expression:String) -> Float {
        if true {
          return self._translation(expression: expression)
        }
        
       let array = expression.split(separator: " ")
        var left:ArithmeticExpressionProtocol?
        var right:ArithmeticExpressionProtocol?

        for index in 0 ..< array.count {
            let item = array[index]
            if index == 0 {
                self.expressions.append(NumberExpression(number: Float(item) ?? 0))
            }
            if item == "+" {
                left = self.expressions.removeLast()
                right = NumberExpression(number: Float(array[index + 1]) ?? 0)
                self.expressions.append(AdditionExpression(left: left!, right: right!))
            }

            if item == "-" {
                left = self.expressions.removeLast()
                right = NumberExpression(number: Float(array[index + 1]) ?? 0)
                self.expressions.append(SubtractionExpression(left: left!, right: right!))
            }
        }
        return self.expressions.last?.translation() ?? 0
    }
    
    
    
    func _translation(expression:String) -> Float {
       let array = expression.split(separator: " ")
        var left:ArithmeticExpressionProtocol?
        var right:ArithmeticExpressionProtocol?

        for index in 0 ..< array.count {
            let item = array[index]
            if index == 0 {
                self.expressions.append(NumberExpression(number: Float(item) ?? 0))
            }
            if item == "+" {
                left = self.expressions.removeLast()
                right = NumberExpression(number: Float(array[index + 1]) ?? 0)
                self.expressions.append(
                    NumberExpression(
                        number:AdditionExpression(
                            left: left!, right: right!)
                            .translation()))
            }
            
            if item == "-" {
                left = self.expressions.removeLast()
                right = NumberExpression(number: Float(array[index + 1]) ?? 0)
                self.expressions.append(NumberExpression(number:SubtractionExpression(left: left!, right: right!).translation()))
            }
        }
        return self.expressions.last?.translation() ?? 0
    }
    
    
    
    
    

}
