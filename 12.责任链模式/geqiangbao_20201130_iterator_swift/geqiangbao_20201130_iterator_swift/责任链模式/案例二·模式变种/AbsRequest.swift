//
//  AbsRequest.swift
//  geqiangbao_20201130_iterator_swift
//
//  Created by xiaobao on 2020/11/30.
//

import UIKit

class AbsRequest: NSObject {
    var name:String
    
    init(name:String) {
        self.name = name
    }
    
    func getRequestLevel() -> Int{
        return 0;
    }
}
