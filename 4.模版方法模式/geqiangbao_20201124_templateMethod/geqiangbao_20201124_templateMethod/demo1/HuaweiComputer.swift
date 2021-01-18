//
//  HuaweiComputer.swift
//  geqiangbao_20201124_templateMethod
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

class HuaweiComputer: TemplateMethodComputer {
    override func loadOS() {
        print("加载华为系统...")
    }
    override func login() {
        print("登录华为系统...")
    }

}
