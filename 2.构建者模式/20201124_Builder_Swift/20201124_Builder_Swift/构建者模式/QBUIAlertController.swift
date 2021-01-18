//
//  QBUIAlertController.swift
//  geqiangbao_20201124_Builder_Swift
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

class QBUIAlertController: NSObject {
    
    private var params:BuilderParams?
    override init() {
        self.params = BuilderParams()
    }
    
    func title(title:String,message:String,preferredStyle:UIAlertController.Style) -> QBUIAlertController {
        self.params?.title = title
        self.params?.message = message
        self.params?.preferredStyle = preferredStyle
        return self
    }
    func addAction_ok(action_title1:String,action_style1:UIAlertAction.Style,action_handle1:@escaping ((UIAlertAction)->Swift.Void)) -> QBUIAlertController {
        self.params?.action_title1 = action_title1
        self.params?.action_style1 = action_style1
        self.params?.action_handle1 = action_handle1
        return self
    }
    
    func addAction_cancel(action_title2:String,action_style2:UIAlertAction.Style,action_handle2:@escaping ((UIAlertAction)->Swift.Void)) -> QBUIAlertController {
        self.params?.action_title2 = action_title2
        self.params?.action_style2 = action_style2
        self.params?.action_handle2 = action_handle2
        return self
    }
    
    
    func build() -> UIAlertController {
        let vc = UIAlertController(title: self.params?.title, message: self.params?.message, preferredStyle: self.params?.preferredStyle ?? .alert)
        let action1 =  UIAlertAction(title: self.params?.action_title1, style: self.params?.action_style1 ?? .default, handler: self.params?.action_handle1)
        let action2 = UIAlertAction(title: self.params?.action_title2, style: self.params?.action_style2 ?? .default, handler: self.params?.action_handle2)
        vc.addAction(action1)
        vc.addAction(action2)
        return vc;
    }
    
    class BuilderParams: NSObject {
        /// 标题
        var title:String?
        var message:String?
        var preferredStyle:UIAlertController.Style?
        var action_title1:String?
        var action_style1:UIAlertAction.Style?
        var action_handle1:((UIAlertAction)->Swift.Void)?
        var action_title2:String?
        var action_style2:UIAlertAction.Style?
        var action_handle2:((UIAlertAction)->Swift.Void)?
    }
}








