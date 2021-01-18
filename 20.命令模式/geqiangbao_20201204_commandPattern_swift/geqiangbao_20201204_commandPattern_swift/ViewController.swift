//
//  ViewController.swift
//  geqiangbao_20201204_commandPattern_swift
//
//  Created by xiaobao on 2020/12/4.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo5()
        // Do any additional setup after loading the view.
    }
    
    
    func demo1(){
        let computer = MacComputer()
        let invoker = MacInvoker(computer: computer)
        invoker.start()
        invoker.shutdown()
        invoker.shutdown()
        invoker.shutdown()
        print("======")
        invoker.undo()


    }
    
//    动态命令
    func demo2(){
        let computer = MacComputer()
        let invoker = DynamicCommandInvoker(computer: computer)
        invoker.start()
        invoker.shutdown()
        invoker.shutdown()
        invoker.shutdown()
        print("======")
        invoker.undoAll()
    }
    
    
    /// 复合命令
    func demo3(){
        let computer = MacComputer()
        let invoker = WrapperCommandInvoker(computer: computer)
        invoker.start()
        invoker.shutdown()
        invoker.shutdown()
        invoker.shutdown()
        print("======")
        invoker.undoAll()

    }

    
    /// 万能命令
    func demo4(){
        let computer = MacComputer()
        let invoker = GenerialCommandInvoker(computer: computer)
        invoker.start()
        invoker.shutdown()
        invoker.shutdown()
        invoker.shutdown()
        print("======")
        invoker.undoAll()
    }
    
    /// block
    func demo5(){
        let computer = MacComputer()
        let invoker = BlockCommandInvoke(computer: computer)
        invoker.start()
        invoker.shutdown()
        invoker.shutdown()
        invoker.shutdown()
        print("======")
        invoker.undoAll()
    }




}

