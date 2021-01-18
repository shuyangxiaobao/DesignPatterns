//
//  MemoManager.swift
//  geqiangbao_20201127_ memo_swift
//
//  Created by xiaobao on 2020/12/16.
//

import UIKit


/// 角色三:角色管理员
class MemoManager: NSObject {
    var memo:Memo?
    
    override init() {
        self.memo = Memo(status: "")
    }
    /// 读取备忘录
    /// - Returns: <#description#>
    func read() -> Memo{
        return self.memo!
    }
    
    
    /// 保存备忘录
    /// - Parameter memo: <#memo description#>
    func write(memo:Memo){
        self.memo = memo.copy() as? Memo
    }

}
