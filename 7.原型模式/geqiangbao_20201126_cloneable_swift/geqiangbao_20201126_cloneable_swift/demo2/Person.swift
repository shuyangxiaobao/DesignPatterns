//
//  Person.swift
//  geqiangbao_20201126_cloneable_swift
//
//  Created by xiaobao on 2020/11/26.
//

import UIKit

class Person: NSObject,CloneableProtocol {
    var name:String
    var age:Int
    
    init(name:String,age:Int) {
        self.name = name
        self.age = age
    }
    
    func clone() -> Person {
        return Person(name: self.name, age: self.age)
    }
    
    

}
