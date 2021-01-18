//
//  ComputerColleague.swift
//  geqiangbao_20201202_mediator_swift
//
//  Created by xiaobao on 2020/12/2.
//

import Foundation


/// 电脑同事(子系统)
protocol ComputerColleague {
    var mediator:ComputerMediator {get set}
}
