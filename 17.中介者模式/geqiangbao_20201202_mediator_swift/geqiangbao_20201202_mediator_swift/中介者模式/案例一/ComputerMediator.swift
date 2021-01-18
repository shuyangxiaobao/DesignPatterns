//
//  ComputerMediator.swift
//  geqiangbao_20201202_mediator_swift
//
//  Created by xiaobao on 2020/12/2.
//

import Foundation


/// 中介者
protocol ComputerMediator {
    func callback(colleague:ComputerColleague)
}
