//
//  HandlerOne.swift
//  geqiangbao_20201130_iterator_swift
//
//  Created by xiaobao on 2020/11/30.
//

import UIKit

class HandlerOne: AbsHandler {

    override func getHandlerLevel() -> Int{
        return 1;
    }
    
    override func handler(request:AbsRequest){
        print("HandlerOne: \(request.name)")
    }
}
