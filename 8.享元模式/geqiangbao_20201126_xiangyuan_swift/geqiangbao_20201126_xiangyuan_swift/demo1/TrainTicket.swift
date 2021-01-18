//
//  TrainTicket.swift
//  geqiangbao_20201126_xiangyuan_swift
//
//  Created by xiaobao on 2020/11/26.
//

import Foundation

//第二步：具体享元对象->汽车票、火车票、高铁票、飞机票
//火车票(成都->北京)
class TrainTicket: TicketProtocol {
    
    private var price:Int?
    private var from:String?
    private var to:String?
    private var bunk:String?
    
    init(from:String, to:String) {
        self.from = from
        self.to = to
    }
    
    func showTicketInfo(bunk: String) {
        self.bunk = bunk
        //这个逻辑需要查询数据库，根据起点位置和终点位置查询
        //写死了
        if bunk == "二等座" {
            self.price = 880
        } else if bunk == "一等座" {
            self.price = 1200
        } else if bunk == "特等座" {
            self.price = 1500
        } else if bunk == "商务座" {
            self.price = 1800
        }
        print("起点:\(self.from)-终点:\(self.to)，座位:\(self.bunk)，价格:\(self.price)")
    }
    
}
