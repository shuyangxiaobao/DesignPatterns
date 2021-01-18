//
//  ViewController.swift
//  geqiangbao_20201207_factory_swift
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit

/// <#Description#>
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo5()
        // Do any additional setup after loading the view.
    }
    
    
    /*
     1.具体工厂
     2.抽象产品
     3.具体产品
     
     */
    
    /// 普通简单工厂
    func demo1(){
        let factory = ComputerFactpry()
        let computer = factory.getComputer(type: "SXComputer")
        computer?.cpu()
        computer?.displaycard()
        computer?.mainborad()
    }

    /// 多方法简单工厂
    func demo2(){
        let factory = ComputerFactpry2()
        var computer = factory.getHWComputer()
        computer.cpu()
        computer.displaycard()
        computer.mainborad()
        print("-----demo2------")
        computer = factory.getSXComputer()
        computer.cpu()
        computer.displaycard()
        computer.mainborad()
    }
    
    /// 静态方法简单工厂
    func demo3(){
        var computer = ComputerFactpry3.getSXComputer()
        computer.cpu()
        computer.displaycard()
        computer.mainborad()
        print("------demo3-----")
        computer = ComputerFactpry3.getHWComputer()
        computer.cpu()
        computer.displaycard()
        computer.mainborad()
    }

    
    /// 2.工厂方法模式
    func demo4(){
        /*
         1.抽象工厂
         2.具体工厂
         3.抽象产品(只有一个抽象产品)
         4.具体产品
         
         */
        
        var computer = HWComputerFactory().getComputer();
        computer.cpu()
        computer.displaycard()
        computer.mainborad()
        
        print("-----demo4------")
        
        computer = SXComputerFactory().getComputer()
        computer.cpu()
        computer.displaycard()
        computer.mainborad()
    }
    
    /*
     1.抽象工厂
     2.具体工厂
     3.抽象产品(有多个抽象产品)
     4.具体产品
     
     */
    
    /// 抽象工厂
    func demo5(){
        let factory = HWFactory()
        let computer = factory.getComputer()
        let mobile = factory.getMobilePhone()
        computer.cpu()
        computer.displaycard()
        computer.mainborad()
        mobile.start()
        mobile.end()
    }




}

