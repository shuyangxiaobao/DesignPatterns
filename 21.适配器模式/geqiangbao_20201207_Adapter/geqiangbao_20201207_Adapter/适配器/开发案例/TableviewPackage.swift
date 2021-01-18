//
//  TableviewPackage.swift
//  geqiangbao_20201207_Adapter
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit
import SnapKit

class TableviewPackage: NSObject {
    var tableview:UITableView?
    weak var context:NextViewController!
    var adapter:BaseUItableViewAdapter?
    
    init(context:NextViewController) {
        self.context = context
        super.init()
        self.createUI()
    }
    
    func createUI(){
        self.tableview = UITableView(frame: .zero)
        self.adapter = BaseUItableViewAdapter(tableview:self.tableview!)
        self.tableview?.delegate = self.adapter
        self.tableview?.dataSource = self.adapter
        self.tableview?.tableFooterView = UIView()
        self.context.view.addSubview(self.tableview!)
        self.tableview?.snp.makeConstraints({ (make) in
            make.left.right.top.bottom.equalToSuperview()
        })
        
    }
    
    deinit {
        print("TableviewPackage deinit 😄😄😄")
    }
    
    

}
