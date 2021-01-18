//
//  JDQSCaretaker.swift
//  geqiangbao_20201127_ memo_swift
//
//  Created by xiaobao on 2020/11/27.
//

import UIKit

//最后：定义一个负责存储备忘录
class JDQSCaretaker: NSObject {
    var memo:JDQSMemo?
    func read() -> JDQSMemo? {
        return self.memo
    }
    
    func write(memo:JDQSMemo){
        self.memo = memo.copy() as? JDQSMemo
    }


}
