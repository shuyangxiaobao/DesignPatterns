//
//  ViewController.swift
//  geqiangbao_20201127_Component_swift
//
//  Created by xiaobao on 2020/11/27.
//

//组合模式
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        demo1()
        // Do any additional setup after loading the view.
    }
    
    func demo1(){
        var c1 = Composite(name: "中国")
        var jiangsu = Composite(name: "江苏")
        var shanghai = Composite(name: "上海")

        c1.addComponent(child: jiangsu)
        c1.addComponent(child: shanghai)
        c1.removeCoponent(child: Composite(name: "江苏"))
        c1.clear()
        print(c1.components)

    }

    

    


}

