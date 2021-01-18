//
//  ParserContext.swift
//  geqiangbao_20201130_parser_swift
//
//  Created by xiaobao on 2020/11/30.
//

import UIKit

class ParserContext: NSObject {

    //let str = "10 + 20 + 30"
    class func interpreter(expression:String) -> Float {
        let array = expression.split(separator: " ").map(String.init)
        var sum:Float = 0
//        var current:Float = 0
        var next:Float = 0
        for index in 0...array.count - 1 {
            let item = array[index]
            if index == 0 {
                sum = Float(item)!
            }
            //判定符号
            if item == "+" {
                next = Float(array[index + 1])!
                sum = sum + next
            } else {
//                current = Float(item)!
            }
        }
//        sum = sum + Float(array[0])!
        return sum
    }
    
}

