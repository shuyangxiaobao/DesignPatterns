//
//  OneHandler.swift
//  geqiangbao_20201130_iterator_swift
//
//  Created by xiaobao on 2020/11/30.
//

import UIKit

class OneHandler: Handler {
    
    override func handlerRequest(condition: String) {
        if condition == "OneHandler" {
            request()
        } else{
            self.nextHandler?.handlerRequest(condition: condition)
        }
    }

    func request(){
        print("OneHandler 处理业务逻辑")
    }

}
