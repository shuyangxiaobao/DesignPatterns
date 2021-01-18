//
//  AbsHandler.swift
//  geqiangbao_20201130_iterator_swift
//
//  Created by xiaobao on 2020/11/30.
//

import UIKit

class AbsHandler: NSObject {
    var nextHandler:AbsHandler?

    func handlerRequest(request:AbsRequest){
        if self.getHandlerLevel() == request.getRequestLevel() {
            self.handler(request: request)
        } else {
            self.nextHandler?.handlerRequest(request: request)
        }
    }
    
    func getHandlerLevel() -> Int{
        return 0;
    }
    
    func handler(request:AbsRequest){

    }



}
