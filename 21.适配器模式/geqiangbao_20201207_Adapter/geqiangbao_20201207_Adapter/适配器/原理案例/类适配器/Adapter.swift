//
//  Adapter.swift
//  geqiangbao_20201207_Adapter
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit

class Adapter: Adaptee,Target {
    func getRMB ()-> Float {
        return Float(self.getUSA()) * 6.777723
    }

}
