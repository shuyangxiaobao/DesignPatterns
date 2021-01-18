//
//  BaseUItableViewAdapter.swift
//  geqiangbao_20201207_Adapter
//
//  Created by xiaobao on 2020/12/7.
//

import UIKit

class BaseUItableViewAdapter: NSObject,UITableViewDelegate,UITableViewDataSource{
    var tableview:UITableView?

    init(tableview:UITableView) {
        self.tableview = tableview
        super.init()
        self.initData()
    }
    

    func initData(){
        self.dataArray = Array()
        for index in 0 ..< 30 {
            self.dataArray?.append(index)
        }
        self.tableview?.reloadData()
    }
    
    
    
    var dataArray:Array<Any>?

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray?.count ?? 10;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "UITableViewCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: identifier)
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: identifier)
        }
        
        cell?.textLabel?.text = String(format: "%d", self.dataArray?[indexPath.row] as! CVarArg)
//        cell?.textLabel?.text = "2323"

        cell?.detailTextLabel?.text = "detail 111111"
        return cell!
    }
    
    deinit {
        print("BaseUItableViewAdapter deinit 😄😄😄")
    }
    

}
