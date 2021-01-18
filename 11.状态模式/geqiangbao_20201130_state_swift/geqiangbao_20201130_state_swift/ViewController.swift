//
//  ViewController.swift
//  geqiangbao_20201130_state_swift
//
//  Created by xiaobao on 2020/11/30.
//

import UIKit
import WebKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        // Do any additional setup after loading the view.
    }
    
    func demo1(){
        let context = TvControllerContext()
        context.powerOn()
        
        context.nextChannel()
        context.preChannel()
        context.turnUp()
        context.turnUp()
        
        context.powerOff()
        context.nextChannel()
        context.preChannel()
        context.turnUp()
        context.turnUp()
    }
    
    




}

