//
//  ArrayIterator.swift
//  geqiangbao_20201125_iterator_swift
//
//  Created by xiaobao on 2020/11/25.
//

import UIKit

class ArrayIterator<M>: AnyIterator<Array<M>,M> {

    override func hasNext() -> Bool {
        return self.index < self.datas?.count ?? 0
    }
    
    override func next() -> M? {
        if self.hasNext() {
            let result = self.datas?[self.index]
            self.index += 1
            return result
        } else {
            return nil
        }
    }
}
