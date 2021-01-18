//
//  SetIterator.swift
//  geqiangbao_20201125_iterator_swift
//
//  Created by xiaobao on 2020/11/25.
//

import UIKit

class SetIterator<T>: AnyIterator<NSSet,T> {

    var iterator:NSFastEnumerationIterator?
    override init(datas: NSSet) {
        super.init(datas: datas)
        self.iterator = self.datas?.makeIterator()
    }
    
    override func hasNext() -> Bool {
        return self.index < self.datas?.count ?? 0
    }
    
    override func next() -> T? {
        if self.hasNext() {
            self.index += 1
            let a = self.iterator?.next() as? T
            return a
        }
        return nil
    }
}
