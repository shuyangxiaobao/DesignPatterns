//
//  AnyIterator.swift
//  geqiangbao_20201125_iterator_swift
//
//  Created by xiaobao on 2020/11/25.
//

import UIKit

class AnyIterator<K,M>: NSObject,IteratorProtocol {
    typealias T = M
    var index:Int! = 0
    var datas:K?

    init(datas:K) {
        self.datas = datas
    }
    
    func next() -> M? {
        return nil
    }
    
    func hasNext() -> Bool {
        return false
    }
    


    
  
    
    

}
