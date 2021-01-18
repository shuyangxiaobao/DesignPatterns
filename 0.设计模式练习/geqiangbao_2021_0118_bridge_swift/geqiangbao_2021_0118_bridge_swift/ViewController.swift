//
//  ViewController.swift
//  geqiangbao_2021_0118_bridge_swift
//
//  Created by xiaobao on 2021/1/18.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.demo1()
        // Do any additional setup after loading the view.
    }
    
    
    func demo1(){
       let size = Big()
        let additive = SugarAdditive()
        let m1 = MilkTea(milkTeaSize: size, additive: additive, bank:NaiXueBrank())
        m1.makeMilkTea()
    }



}

