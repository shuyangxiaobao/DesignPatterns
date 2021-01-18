//
//  ViewController.swift
//  geqiangbao_20201124_templateMethod
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

import UIKit
import AVFoundation

class ViewController: UIViewController, AVPlayerDelegate {
    
    var player:TemplateAVPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        demo2()
    }
    
    func demo1(){
        HuaweiComputer().startup()
    }
    func demo2(){
        let path = Bundle.main.path(forResource: "Test", ofType: ".mov")
        let player = DefaultAVPlayer()
        player.delegate = self
        player.play(controller: self, frame: self.view.frame, url: path!)
        self.player = player
        //重载:方法名相同，参数列表不同
        //重写:重写已有父类方法
    }
    
    func playerCall(status: AVPlayerItem.Status?) {
        print(status ?? "")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

/*
 
 
 https://www.cnblogs.com/wangkaihua/p/9123171.html
 https://www.cnblogs.com/wangkaihua/p/9123171.html
 
 内容二：模版方法模式
     1、模版方法模式定义？
         第一点：定义一个操作中的算法框架
         第二点：将一些步骤延时到子类实现
         第三点：子类不可以改变算法结构，可以重新定义算法的某些特定步骤

     2、模版方法模式应用场景？
         场景一：多个子类有公有方法，且逻辑基本相同
         场景二：重复、复杂的算法，将核心算法设计为模版方法，其周边细节可以由各个子类实现
         场景三：代码重构
     3、模版方法模式->角色划分？
         两个角色
         角色一：抽象类->作用（定义算法框架结构，将一些特定步骤延时到子类实现）
         角色二：具体模版实现类，不改变算法结构，选择性去实现某些特定步骤。
     4、模版方法模式-原理案例？
         听方法，理解思路和原理，以及解决问题（扩展衍生，举一反三）
         国防安全系统
         电脑开机过程->开机过程
         1、激活电源（按下电源）
         2、检测硬件
         3、启动系统（加载系统）
         4、登录系统
         模版类：流程统一的（算法框架）
         抽象类：TemplateMethodComputer
         具体类：HuaweiComputer
         总结：
             假设步骤一 + 步骤二固定不变默认实现，只需要实现步骤三 + 步骤四，非常灵活
             地图加载也是如此，你也将某些特定公共功能，抽象为模版类，子类只需要实现具体的功能即可

     5、模版方法模式->开发案例？
         播放器案例
         角色一：模版类->TemplateAVPlayer
         角色二：实现类->DefaultAVPlayer
         写一段普通代码
         写的很复杂，不太好管理和复用

         模版方法模式处理，优化代码结构
         第一步：定义一个模版类->TemplateAVPlayer
             模版方法是什么？
                 播放流程？
                 1、创建播放器
                 2、准备播放器（设置基本参数）
                 3、添加监听器
                 4、开始播放
         UI加载、UITableViewCell->下拉刷新组件里面（模版）
         第三方下拉刷新组件
         UIViewController其实就是模版方法模式->生命周期固定的
         UIView生命周期也是固定的
         下啦刷新组件->加载流程固定，很多了
         我的父类给了一套模版，你只需要去实现即可，不用关心内部流程细节（顺序）
         API作说明

 
 
 */

