//
//  MilkTea.swift
//  geqiangbao_2021_0118_bridge_swift
//
//  Created by xiaobao on 2021/1/18.
//

import UIKit

/// 奶茶
class MilkTea: NSObject {
    var milkTeaSize:MilkTeaSizeProtocol
    var additive:AdditiveProtocol
    var bank:BankProtocol

    init(milkTeaSize:MilkTeaSizeProtocol,additive:AdditiveProtocol,bank:BankProtocol) {
        self.milkTeaSize = milkTeaSize
        self.additive = additive
        self.bank = bank

    }
    
    func makeMilkTea(){
        let str = self.milkTeaSize.size + self.additive.aditiveContent + self.bank.bankName()
        print(str)
    }


    

}
