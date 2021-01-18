//
//  IteratorProtocol.swift
//  geqiangbao_20201125_iterator_swift
//
//  Created by xiaobao on 2020/11/25.
//

import Foundation


protocol IteratorProtocol {
    associatedtype T
    func next() -> T?
    func hasNext() -> Bool
   
}

