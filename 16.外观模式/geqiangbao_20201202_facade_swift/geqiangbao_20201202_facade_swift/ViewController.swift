//
//  ViewController.swift
//  geqiangbao_20201202_facade_swift
//
//  Created by xiaobao on 2020/12/2.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        // Do any additional setup after loading the view.
    }

    
    func demo1(){
       let comp = Computer()
        comp.paizhao()
        print("-------")
        comp.playGame()
        print("-------")
        comp.listenMusic()
    }


}

