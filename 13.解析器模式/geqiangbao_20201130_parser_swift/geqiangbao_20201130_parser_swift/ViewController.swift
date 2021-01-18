//
//  ViewController.swift
//  geqiangbao_20201130_parser_swift
//
//  Created by xiaobao on 2020/11/30.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        // Do any additional setup after loading the view.
    }
    
    func demo1(){
       let a = ParserContext2().translation(expression: "12 + 23 + 34 - 40 + 26 - 27")
        print(a)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        demo1()
    }



}

