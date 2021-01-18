//
//  TemplateMethodComputer.swift
//  geqiangbao_20201124_templateMethod
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

//模版类:定义了算法框架结构(设计模式->结构)
class TemplateMethodComputer: NSObject {

    override init() {
        super.init()
    }
    
//    电脑开机过程->开机过程
//    1、激活电源（按下电源）
    func powerUp() {
        print("按下电源...")
    }
//    2、检测硬件
    func checkHardware() {
        print("检测硬件...")
    }
//    3、启动系统（加载系统）
    func loadOS() {
        print("启动系统...")
    }
//    4、登录系统
    func login() {
        print("登录系统...")
    }
//    模版类：流程统一的（算法框架）->开机
    final func startup() {
        //1、激活电源（按下电源）
        powerUp()
        //2、检测硬件
        checkHardware()
        //3、启动系统（加载系统）
        loadOS()
        //4、登录系统
        login()
    }
//    抽象类：TemplateMethodComputer
    
    
}
