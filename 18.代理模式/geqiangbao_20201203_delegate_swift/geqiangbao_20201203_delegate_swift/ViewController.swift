//
//  ViewController.swift
//  geqiangbao_20201203_delegate_swift
//
//  Created by xiaobao on 2020/12/3.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        // Do any additional setup after loading the view.
    }

//    静态代理
    func demo1(){
        let proxy = PersonProxy(name: "小明")
        proxy.buyProduct()
        proxy.payGoods()
    }
    /*
     1.可以做到在不修改目标对象的功能前提下,对目标功能扩展.
     静态代理需要目标对象和代理对象实现相同的接口。可以在不修改目标对象功能的前提下.对目标功能进行扩展。


     2.缺点:

     因为代理对象需要与目标对象实现一样的接口,所以会有很多代理类,类太多
     同时,一旦接口增加方法,目标对象与代理对象都要维护.
     如何解决静态代理中的缺点呢?答案是可以使用动态代理方式
     */
   


}

