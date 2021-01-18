//
//  Computer.swift
//  geqiangbao_20201124_Builder_Swift
//
//  Created by xiaobao on 2020/12/3.
//

import UIKit

class Computer: NSObject {
    private var name:String?
    private var cpu:String?
    private var display:String?
    private var gpu:String?
    
    init(name:String,cpu:String,display:String,gpu:String) {
        self.name = name
        self.cpu = cpu
        self.display = display
        self.gpu = gpu
    }
    
    func printComputer(){
        print(self.name ?? "")
        print(self.cpu ?? "")
        print(self.display ?? "")
        print(self.gpu ?? "")
    }
    
    class Builder: NSObject {
        private var name:String?
        private var cpu:String?
        private var display:String?
        private var gpu:String?
        
        func name(_ name:String) -> Builder{
            self.name = name
            return self
        }
        
        func cpu(_ cpu:String) -> Builder{
            self.cpu = cpu
            return self
        }
        
        func display(_ display:String) -> Builder{
            self.display = display
            return self
        }
        
        func gpu(_ gpu:String) -> Builder{
            self.gpu = gpu
            return self
        }
        func build() -> Computer{
            return Computer(name: self.name ?? "", cpu: self.cpu ?? "", display: self.display ?? "", gpu: self.gpu ?? "")
        }

    }


    
}
