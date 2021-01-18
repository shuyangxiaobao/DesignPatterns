//
//  NextViewController.swift
//  geqiangbao_20201207_Adapter
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit

class NextViewController: UIViewController {
    var tableviewPackage:TableviewPackage?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableviewPackage = TableviewPackage(context: self)
        
        
        // Do any additional setup after loading the view.
    }
    

    
    deinit {
        print("NextViewController deinit 😄😄😄")
    }

}
