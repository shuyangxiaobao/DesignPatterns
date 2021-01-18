//
//  TicketProtocol.swift
//  geqiangbao_20201126_xiangyuan_swift
//
//  Created by xiaobao on 2020/11/26.
//

import Foundation

//第一步：享元接口->TicketProtocol
protocol TicketProtocol {
    //高铁票：二等座、一等座、特等座、商务座
    func showTicketInfo(bunk:String)
}
