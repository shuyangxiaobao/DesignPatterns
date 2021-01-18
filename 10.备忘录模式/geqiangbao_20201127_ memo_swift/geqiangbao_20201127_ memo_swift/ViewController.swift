//
//  ViewController.swift
//  geqiangbao_20201127_ memo_swift
//
//  Created by xiaobao on 2020/11/27.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo2()
        // Do any additional setup after loading the view.
    }
    
    func demo1(){
        var r1 = JDQSORiginator()
        for index in 1...3 {
            r1.play()
        }
        var memo = r1.createMemo()
        r1.play()
        r1.jingdu()
        print("恢复")
        var take = JDQSCaretaker()
        take.write(memo: memo)
        r1.restore(memo: take.read()!)
        r1.jingdu()
    }
    
    //MARK:- 
    func demo2(){
        print(#function)
        print(#file)
        let orig = Originator(status: "on")
        let manager = MemoManager()
        manager.write(memo: orig.createMemo())
        orig.setStatus(status: "off")
        orig.restore(memo: manager.read())
        print(orig.getStatus())
    }




}

