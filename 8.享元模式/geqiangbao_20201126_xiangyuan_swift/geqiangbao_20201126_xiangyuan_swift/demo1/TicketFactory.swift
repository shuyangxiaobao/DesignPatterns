//
//  TicketFactory.swift
//  geqiangbao_20201126_xiangyuan_swift
//
//  Created by xiaobao on 2020/11/26.
//

import UIKit

//第三步：享元工厂(简单工厂模式)
//负责创建对象、管理对象
class TicketFactory: NSObject {

    class func ticket(from:String, to:String) -> TicketProtocol {
        //问题在于如果我要查询相同的路线，重写创建对象
        //相同路线应该查询一次就可以了，这样做的目的能够提供效率
        //过年买火车票，查询北京->成都，12306，100万用户查询北京->成都->服务器内存缓存,对象也是一个
        //相同路线进行缓存->享元模式解决(对象池)
        return TrainTicket(from: from, to: to)
    }
    
}
