//
//  ViewController.swift
//  geqiangbao_20201203_ decoration_swift
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
    
    
    func demo1(){
        let component = ConcreteComponent()
        let decorate = ConcreteDecorateA(component: component);
        decorate.operation()
    }


}

