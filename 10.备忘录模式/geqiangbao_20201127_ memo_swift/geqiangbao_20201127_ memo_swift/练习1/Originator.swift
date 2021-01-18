//
//  Originator.swift
//  geqiangbao_20201127_ memo_swift
//
//  Created by xiaobao on 2020/12/16.
//

import UIKit


/// 角色一:发起人
class Originator: NSObject {
    var status:String?
    
    init(status:String) {
        self.status = status
    }
    
    func setStatus(status:String){
        self.status = status
    }
    
    func getStatus() -> String{
        return self.status ?? ""
    }
    /// 创建备忘录
    /// - Returns: 
    func createMemo() -> Memo{
        return Memo(status: self.status ?? "")
    }
    /// 恢复备忘录
    /// - Parameter memo:
    func restore(memo:Memo){
        self.status = memo.status
    }

}
