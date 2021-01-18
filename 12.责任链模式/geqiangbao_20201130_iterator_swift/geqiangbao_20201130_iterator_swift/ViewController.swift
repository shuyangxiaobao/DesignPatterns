//
//  ViewController.swift
//  geqiangbao_20201130_iterator_swift
//
//  Created by xiaobao on 2020/11/30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo3()
        // Do any additional setup after loading the view.
    }
    
    func demo1(){
        let oneHandle = OneHandler()
        let twoHandler = TwoHandler()
        oneHandle.nextHandler = twoHandler
        oneHandle.handlerRequest(condition: "TwoHandler")
    }
    
    func demo2(){
        let requestOne = RequestOne(name: "我是1号请求")
        let requestTwo = RequestTwo(name: "我是2号请求")
        let handlerTwo = HandlerTwo()
        let handlerOne = HandlerOne()
        handlerOne.nextHandler = handlerTwo
        handlerOne.handlerRequest(request: requestTwo)
    }

    func demo3(){
       let expense = ExpenseAccount(money: 1200, title: "报销", content:"mac 电脑")
       let group = LeaderGroup();
        let manager = LeaderManager();
        let ceo = LeaderCEO();
        group.nextHandler = manager;
        manager.nextHandler = ceo
        group.handleRequest(expense: expense)


    }
    /*
     两个核心角色？
     角色一：抽象处理对象->Handler
         两个特点
         第一个：声明一个处理方法
         第二个：保持一个对下一个处理节点的对象引用
     角色二：具体处理对象->OneHandler、TwoHandler
     */





}

