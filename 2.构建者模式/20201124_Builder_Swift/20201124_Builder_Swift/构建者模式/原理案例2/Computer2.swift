//
//  Computer2.swift
//  geqiangbao_20201124_Builder_Swift
//
//  Created by xiaobao on 2020/12/4.
//

import UIKit
//第一步：我们的目标Computer类：
class Computer2: NSObject {
    private var cpu:String?     //必须
    private var ram:String?    //必须
    private var usbCount:Int?  //可选
    private var keyboard:String?   //可选
    private var display:String?    //可选
    
    init(cpu:String,ram:String) {
        self.cpu = cpu
        self.ram = ram
    }
    
    func setUsbCount(_ usbCount:Int){
        self.usbCount = usbCount
    }
    
    func setKeyboard(_ keyboard:String){
        self.keyboard = keyboard
    }
    
    func setDisplay(_ display:String){
        self.display = display
    }
    
    func dosomething(){
        
        guard let ram = self.ram else {
            return
        }
        print(ram)
        
        guard let cpu = self.cpu else {
            return
        }
        print(cpu)

        guard let keyboard = self.keyboard else {
            return
        }
        print(keyboard)
        

        
    }
   
}


