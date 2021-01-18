//
//  ObjectAdapter.swift
//  geqiangbao_20201207_Adapter
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit

class ObjectAdapter: NSObject,Target {
    private var adptee:Adaptee
    
    init(adptee:Adaptee) {
        self.adptee = adptee
    }
    func getRMB() -> Float {
        Float(self.adptee.getUSA()) * 6.777723
    }

    
}
