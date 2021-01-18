//
//  Desktop.swift
//  geqiangbao_20201201_bridge_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit

class Desktop: ComputerProtocol {
    var brand: BrandProtocol?

    func sale() {
        let a =  "销售" + (self.brand?.brand() ?? "") + "笔记本" + "电脑"
        print(a)
    }
    

}
