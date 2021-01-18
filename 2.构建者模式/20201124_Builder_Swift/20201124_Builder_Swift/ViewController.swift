//
//  ViewController.swift
//  20201124_Builder_Swift
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        demo6()
        
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //         vc.show(self, sender: nil)
    }
    
    func demo6(){
        let mobile = Mobile.Builder(cpu: "A14芯片", gpu: "苹果gpu")
            .display("显示器")
            .mainboard("主板")
            .build()
        mobile.printmobile()
    }

    
    
    func demo5(){
       let director = ComputerDirector()
       let builder = MacComputerBuilder(cpu: "I5处理器", ram: "三星125")
        director.makeComputer(builder: builder)
        let macComputer = builder.getComputer()
        macComputer.dosomething()
        
    }
    
    

    
    
    func demo4(){
        _ =  QBUILabel
            .Builder()
            .text("nimeide")
            .cornerRadius(3)
            .font(UIFont.systemFont(ofSize: 15))
            .build()
        
        
    }

    
    func demo3(){
        let computer = Computer
            .Builder()
            .cpu("i am cpu")
            .name("i am name")
            .gpu("i am gpu")
            .display("i am display")
            .build()
        computer.printComputer()
    }

    
    func demo2(){
        let segment = QBUISegmentedControl()
            .insertSegment(withTitle: "语文", at: 0, animated: false)
            .insertSegment(withTitle: "数学", at: 1, animated: false)
            .tintColor(tintColor: UIColor.red)
            .selectedSegmentTintColor(selectedSegmentTintColor: UIColor.gray)
            .textColor(textColor: UIColor.red)
            .backgroundColor(backgroundColor: UIColor.blue)
            .build()
        self.view.addSubview(segment)
        segment.frame = CGRect(x: 100, y: 100, width: 200, height: 50);
        
    }
    
    
    
    func demo1(){
        let vc = QBUIAlertController().title(title: "你好", message: "hello", preferredStyle: .actionSheet)
            .addAction_cancel(action_title2:"cancel", action_style2: UIAlertAction.Style.cancel) { (action) in
                print("\(String(describing: action.title))")
            }
            .addAction_ok(action_title1: "ok", action_style1: UIAlertAction.Style.destructive) { (action) in
                print("\(String(describing: action.title))")
            }
            .build();
        self.present(vc, animated: true) {
            print("qilaile")
        }
    }
    
    
    
}


/*
 当一个类的构造函数参数个数超过4个，而且这些参数有些是可选的参数，考虑使用构造者模式。
 */
