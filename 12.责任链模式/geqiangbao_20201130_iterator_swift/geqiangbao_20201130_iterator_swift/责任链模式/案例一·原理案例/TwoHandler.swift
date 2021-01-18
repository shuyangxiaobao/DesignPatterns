//
//  TwoHandler.swift
//  geqiangbao_20201130_iterator_swift
//
//  Created by xiaobao on 2020/11/30.
//

import UIKit

class TwoHandler: Handler {
    
    override func handlerRequest(condition: String) {
        if condition == "TwoHandler" {
            request()
        } else{
            self.nextHandler?.handlerRequest(condition: condition)
        }
    }

    func request(){
        print("TwoHandler 处理业务逻辑")
    }

}
