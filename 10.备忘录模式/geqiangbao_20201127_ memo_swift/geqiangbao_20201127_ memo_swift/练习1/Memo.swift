//
//  Memo.swift
//  geqiangbao_20201127_ memo_swift
//
//  Created by xiaobao on 2020/12/16.
//

import UIKit

/// 角色二:备忘录
class Memo: NSObject,NSCopying {
    var status:String?
    
    func copy(with zone: NSZone? = nil) -> Any {
        return Memo(status: self.status ?? "")
    }
    init(status:String) {
        self.status = status
    }
}
