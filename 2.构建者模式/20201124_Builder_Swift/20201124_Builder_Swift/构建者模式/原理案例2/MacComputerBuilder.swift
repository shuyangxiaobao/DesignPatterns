//
//  MacComputerBuilder.swift
//  geqiangbao_20201124_Builder_Swift
//
//  Created by xiaobao on 2020/12/4.
//

import UIKit
//第三步：实体构建者类
class MacComputerBuilder: ComputerBuilderprotocol {
    private var computer:Computer2?
    
    
    init(cpu:String,ram:String) {
        computer = Computer2(cpu: cpu, ram: ram)
    }
    func setUsbCount() {
        computer?.setUsbCount(2)
    }
    
    func setKeyboard() {
//        computer?.setKeyboard("mac 键盘")
    }
    
    func setDisplay() {
        computer?.setDisplay("mac 显示器")
    }
    
    func getComputer() -> Computer2 {
        return computer ?? Computer2(cpu: "", ram: "")
    }
    

}
