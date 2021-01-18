//
//  ViewController.swift
//  geqiangbao_20201124_observer
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

class ViewController: UIViewController, Observer,Observer2,Observer3 {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        demo3()
    }
    
    
    func demo3(){
        let subject = ConcreteObserved3()
        let observer = ConcreteObserver3();
        subject.addObserver(observer: observer)
        subject.addObserver(observer: self)
                subject.removeObserver(observer: self)
        subject.notify()
    }
    func update(message: String) {
        print("ViewController: \(message)")
    }
    

    func demo2(){
        let subject = Subject()
        let observer = SpecificObserver();
        subject.addObserver(observer: observer)
        subject.addObserver(observer: self)
        subject.removeObserver(observer: self)
        
        subject.notifyObserver()
    }
    
    func update(msg: String, observer: Observed2?) {
        print("ViewController: msg= \(msg)")
    }
    
    func equal(other:Observer2) -> Bool{
        if other is ViewController {
            return other as! NSObject == self
        } else {
            return false
        }
    }
    
    
    
    func demo1(){
        let observer = NewsObserver()
        let defaultOb = DefaultObserable()
        //线程安全你也可以优化
        defaultOb.setChanged()
        defaultOb.addObserver(observer: self)
        defaultOb.addObserver(observer: observer)
        defaultOb.notifyObserver(msg: "海南的妹子比较漂亮...可以去看看...")
        //观察者模式实现->系统类似的实现
        //其他语言观察者模式->差不多
    }
    
    
    func update(obserable: Observable, msg: Any?) {
        print("NSError同学收到了新闻消息: \(String(describing: msg))")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}



/*
 观察者模式
 https://www.cnblogs.com/adamjwh/p/10913660.html
 https://www.cnblogs.com/adamjwh/p/10913660.html
 1、观察者模式定义？
 定义：当一个对象的状态发生改变时，所有依赖于它的订阅者都会收到通知
 
 2、观察者模式应用场景？
 场景一：关联行为场景
 场景二：事件多级触发场景
 场景三：跨系统消息交互场景（例如：消息队列、事件总线）
 3、观察者模式-角色划分？
 角色一：被观察者（目标对象）
 角色二：具体被观察者
 角色三：观察者（抽象）
 角色四：具体观察者
 分析模版方法模式播放器案例->NotificationCenter角色划分？
 被观察者：抽象->NSObject
 具体被观察者：AVPlayerItem
 观察者：抽象->NSObject
 具体观察者：DefaultAVPlayer
 框架设计，分析源码，结构搞明白
 
 4、观察者模式-原理案例？
 微信公众号：企业号、个人号、订阅号、小程序号
 分析角色？
 被观察者：抽象->客户端->StudentObservable（学生类）
 具体被观察者：安卓客户端、iOS客户端->NSLogStudent、NSErrorStudent、EdWordStudent…
 观察者：抽象->Observer->观察者
 具体观察者：NewsObserver->新闻观察者
 观察服务器变化
 
 总结：观察者模式->在我们的开发里面常用设计模式（使用也是非常简单）->大家自己要学会写一个观察者
 语言之间是相通->设计模式通用性
 学习Java、C++、Kotlin、Python->架构设计角度学习
 我学习新的语言->设计模式方式学习框架
 Python框架->Django框架…scripy、flask
 这些框架用到了大量的设计模式
 框架：工具库->思维方式（改变思维方式人生将发生180度转变）
 数据库框架->很多设计模式融合在一起设计，解决不同问题
 设计模式基本结构和角色大家要搞明白
 层层分析(设计模式基础打牢固)->6层抽象->用了之后总结
 方法：里面使用，用错了再总结，在改进
 
 */


