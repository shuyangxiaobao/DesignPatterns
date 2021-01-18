//
//  ViewController.swift
//  geqiangbao_20201124_strategy_swift
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        var a =  ZhaocaibaoLicai().licaiWithMonth(month: 12, money: 100)
        var b = DingcunbaoLicai().licaiWithMonth(month: 12, money:100)
        print("a= \(a)")
        print("b= \(b)")

    }
    
    
    /// demo3 策略模式
    func demo1(){
        StrategyContext(strategy: ConcreteStrategyB()).demo1()
    }



}

/*
 
 简说设计模式——策略模式
 https://www.cnblogs.com/adamjwh/p/11011095.html
 https://www.cnblogs.com/adamjwh/p/11011095.html
 
内容三：策略模式？
    1、什么是策略模式？->条件
            第一点：定义了一系列算法
            第二点：每一个算法单独封装
            第三点：每一个算法都是可以相互替换
            第四点：客户端可以独立变化算法（客户端：调用者）
            
    2、策略模式-应用场景？
        第一点：针对同一类型的问题多种处理方式，仅仅只是具体的行为有差别
        第二点：需要安全的封装同一类型的操作
        第三点：出现同一抽象类有多个子类，而又需要使用if-else或者switch-case来选择具体子类的时候
        例如：开发场景例子？
            加密算法->用策略模式
            AES加密算法
            DES加密算法
            自定义加密算法
            …
            不利于扩展，不利于维护
            童鞋们喜欢写代码（所有的算法都在一个类中，工具类）
            算法复杂的时候我们需要团队协作了，很麻烦
            策略模式上场了
    3、策略模式-角色划分？
        3个角色（核心角色：策略接口、具体策略）
        角色一：策略接口
        角色二：具体策略
        角色三：策略上下文（管理器）-> 忽略->工厂（不一样）
    4、策略模式-原理案例？
        生活案例
        投资案例
        招财宝、余额宝
            招财宝利率
            6期->3%年化率
            12期->4%年化率
            24期->4.5%年化率
        首先：策略接口->ILicai
        其次：具体策略->ZhaocaibaoLicai

        有利网->定存宝
            3期->7%年化率
            6期->8%年化率
            9期->9%年化率
            12期->9.5%年化率
            24期->10.5%年化率
        客户端->上下文
    5、策略模式-应用场景？
        案例：加密算法->用策略模式
            AES加密算法
            DES加密算法
            自定义加密算法
        看一下原始代码
        策略模式上场了（一个类代码爆炸问题，维护难度之大，不利于团队开发）->体现好处了
        解决的问题是不是同一类问题（加密算法这一类，缓存策略这一类）
            图片缓存策略：磁盘缓存、内存缓存、双缓存（磁盘 + 内存）
        …
        只要涉及到算法都可以

*/
