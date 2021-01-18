//
//  ExcelDocument.swift
//  geqiangbao_20201126_cloneable_swift
//
//  Created by xiaobao on 2020/11/26.
//

import UIKit

class ExcelDocument: NSObject,CloneableProtocol{
    typealias T = ExcelDocument
    var name:String
    var content:String
    init(name:String,content:String) {
        self.name = name
        self.content = content
    }

    func clone() -> ExcelDocument {
        return ExcelDocument(name: self.name, content: self.content)
    }
    
    

    
    
 
    
    

}
