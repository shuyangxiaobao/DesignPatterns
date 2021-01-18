//
//  HandlerTwo.swift
//  geqiangbao_20201130_iterator_swift
//
//  Created by xiaobao on 2020/11/30.
//

import UIKit

class HandlerTwo: AbsHandler {
    override func getHandlerLevel() -> Int{
        return 2;
    }
    
    override func handler(request:AbsRequest){
        print("HandlerTwo: \(request.name)")
    }
}
