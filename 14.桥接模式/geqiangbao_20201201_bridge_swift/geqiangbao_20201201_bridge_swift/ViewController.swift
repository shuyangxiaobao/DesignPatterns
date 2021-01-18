//
//  ViewController.swift
//  geqiangbao_20201201_bridge_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo2()
        // Do any additional setup after loading the view.
    }
    
    func demo1(){
        let c1 = MiddleCoffee()
        let additive = IceAdditive()
        c1.additive = additive
        c1.makeCoffee()
    }

    
    func demo2(){
       let computer = Desktop()
        let brand = SanXing()
        computer.brand = brand
        computer.sale()
    }



}

