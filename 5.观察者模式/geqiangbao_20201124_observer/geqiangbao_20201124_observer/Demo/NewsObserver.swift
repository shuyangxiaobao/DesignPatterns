//
//  NewsObserver.swift
//  geqiangbao_20201124_observer
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

//具体观察者(新闻)
class NewsObserver: NSObject, Observer {

    func update(obserable: Observable, msg: Any?) {
        print("NSLog同学收到了新闻消息: \(String(describing: msg))")
    }
    
}
