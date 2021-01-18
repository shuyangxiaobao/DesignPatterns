//
//  ViewController.swift
//  geqiangbao_20201201_visotor_swift
//
//  Created by xiaobao on 2020/12/1.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        // Do any additional setup after loading the view.
    }
    
    func demo1(){
        let report = BusinessReport()
        let cto = CTOVisitor()
        let ceo = CEOVisitor()
        report.showReport(visitor: cto)
        print("=================")
        report.showReport(visitor: ceo)
    }



}

