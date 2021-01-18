//
//  ViewController.swift
//  geqiangbao_20201207_Adapter
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo2()
        // Do any additional setup after loading the view.
    }

    
    /// 类适配器
    func demo1(){
        let ad = Adapter()
        let a = ad.getRMB()
        let b = String(format: "%.1f", a)
        print(a)
        print(b)
    }
    
    /// 对象适配器
    func demo2(){
        let objectAdapter = ObjectAdapter(adptee: Adaptee())
        let a = objectAdapter.getRMB()
        let b = String(format: "%.1f", a)
        print(a)
        print(b)
    }

    @IBAction func next(_ sender: UIButton) {
        let vc = NextViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

