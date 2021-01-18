//
//  Home.swift
//  geqiangbao_20201126_cloneable_swift
//
//  Created by xiaobao on 2020/11/26.
//

import UIKit

class Home: NSObject,CloneableProtocol {
    
    var address:String
    var code:Int
    var person:Person
    
    init(address:String,code:Int,person:Person) {
        self.address = address
        self.code = code
        self.person = person
    }
    
    func clone() -> Home {
        Home(address: self.address, code: self.code, person: self.person.clone())
    }

}
