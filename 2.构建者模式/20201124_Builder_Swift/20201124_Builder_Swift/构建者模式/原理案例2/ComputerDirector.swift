//
//  ComputerDirector.swift
//  geqiangbao_20201124_Builder_Swift
//
//  Created by xiaobao on 2020/12/4.
//

import UIKit

class ComputerDirector: NSObject {

    func makeComputer(builder:ComputerBuilderprotocol){
        builder.setUsbCount()
        builder.setDisplay()
        builder.setKeyboard()
    }
}
