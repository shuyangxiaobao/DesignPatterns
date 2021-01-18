//
//  Mobile.swift
//  geqiangbao_20201124_Builder_Swift
//
//  Created by xiaobao on 2020/12/8.
//

import UIKit


/// 构建者模式
class Mobile: NSObject {
    private var cpu:String
    private var gpu:String
    private var display:String?
    private var mainboard:String?
    
    init(builder:Builder) {
        self.cpu = builder.cpu
        self.gpu = builder.gpu
        self.display = builder.display
        self.mainboard = builder.mainboard

    }
    
    func printmobile(){
        print(self.cpu)
        print(self.gpu)
        print(self.display ?? "")
        print(self.mainboard ?? "")

    }
    
    
    class Builder {
         var cpu:String
         var gpu:String
         var display:String?
         var mainboard:String?
        
        init(cpu:String,gpu:String) {
            self.cpu = cpu
            self.gpu = gpu
        }
        func display(_ display:String) -> Builder{
            self.display = display
            return self
        }
        
        func mainboard(_ mainboard:String) -> Builder{
            self.mainboard = mainboard
            return self
        }
        
        func build() -> Mobile{
            return Mobile(builder: self)
        }
        
    }


}
