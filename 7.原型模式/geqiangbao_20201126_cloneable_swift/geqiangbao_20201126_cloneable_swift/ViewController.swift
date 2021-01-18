//
//  ViewController.swift
//  geqiangbao_20201126_cloneable_swift
//
//  Created by xiaobao on 2020/11/26.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.perform(#selector(demo3))
    }
    
    @objc func demo1() {
        let excel = ExcelDocument(name: "xiaoming", content: "asldjflasjdfslaf");
        let a = excel.clone();
        
        excel.name = "45"
        
        let str = a.name + ":" + a.content
        print(str)
    }
    
    @objc func demo2() {
        let p1 = Person(name: "bao", age: 18)
        let p2 =  p1.clone()
        p1.age = 20
        print(p2.age)
        
        let home1 = Home(address: "上好", code: 181, person: p1)
        
        let home2 = home1.clone()
        
        p1.name = "nimeide"
        print(home2.person.name) // bao
        
    }
    
    @objc func demo3() {
        var order1 = Order(name: "name1", content: "content1")
        var order2 = PayOrder(name:"name2", content: "content2", payName: "payname")
        var service = OrderService()
        service.add(order:order1 )
        service.add(order: order2)
        order1.name = "修改了"
        order2.name = "修改了 -- 2"
        service.printarray { (order) in
            print(order.name)
        }
        
    }
    
    
}

/*
 ：原型模式
     1、原型模式-定义？
         用原型实例指定创建对象的种类，并且通过拷贝这些原型创建新的对象
         克隆（浅度克隆->拷贝值类型或者引用，深度克隆->创建新的对象）

     2、原型模式-应用场景？
         场景一：当我们编写组件需要创建新的实例对象，但是又不想依赖类的初始化构造器的时候可以采用原型模式来设计。
         场景二：类的初始化过程中需要消耗非常多的资源（数据、硬件资源等），可以采用原型模式设计
     3、原型模式-角色划分？
         两个核心角色？
         角色一：克隆接口
         角色二：具体实现类
             特点：实现协议
     4、原型模式-原理案例？
         数据库框架涉及克隆模式（设计框架应用）
         案例一：浅度拷贝->浅度克隆
             使用于：值类型（基本数据类型（int、float、double…）、结构体）
             角色一：克隆接口->CloneableProtocol
             角色二：具体实现类->ExcelDocument
         案例二：深度拷贝->自定义协议
     
         案例三：原型模式->系统协议

     5、原型模式-加强理解？
         第一步：原始案例
             
         第二步：创建一个对象

         第三步：增加属性->系统升级
             一旦我们增加了属性，那么我们原来的就无法满足要求

         第四步：解决问题->判断方式
             model类型多了，麻烦了
         第五步：终极解决方案->原型模式
             留一个问题：课后思考？
                 不行

 */
