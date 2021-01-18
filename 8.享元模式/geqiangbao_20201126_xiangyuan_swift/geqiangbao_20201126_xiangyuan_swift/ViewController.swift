//
//  ViewController.swift
//  geqiangbao_20201126_xiangyuan_swift
//
//  Created by xiaobao on 2020/11/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        // Do any additional setup after loading the view.
    }
    
    func demo1(){
        for index in 0...100 {
            let str = TicketFactory2.ticket(from: "上海", to:"北京" ).showTicketInfo(bunk: "二等座")
            print(str)
        }
    }



}

