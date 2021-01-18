//
//  TicketFactory2.swift
//  geqiangbao_20201126_xiangyuan_swift
//
//  Created by xiaobao on 2020/11/26.
//

import UIKit
class TicketFactory2: NSObject {
    //字典(享元模式实现->缓存对象)
    //在开发中用的很多
    //场景：后面学习->图片缓存(内存缓存)
    //图片url(图片名称)->key
    //图片资源(缩略图)->value
    //缓存策略
    //第一种：内存缓存
    //第二种：磁盘缓存
    //第三种：双缓存(内存 + 磁盘)
    static var mydict = [String:TicketProtocol]()
    static func ticket(from:String, to:String) -> TicketProtocol {
        let key = from + "_" + to;
        var value = mydict[key]
        if value == nil {
           value = TrainTicket(from: from, to: to)
            mydict[key] = value
        }
        return value!
    }
}
