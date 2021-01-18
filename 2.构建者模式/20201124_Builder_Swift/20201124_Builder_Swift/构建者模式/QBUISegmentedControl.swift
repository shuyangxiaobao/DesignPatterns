//
//  QBUISegmentedControl.swift
//  geqiangbao_20201124_Builder_Swift
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

class QBUISegmentedControl: NSObject {
    private var params:BuilderParams?
    override init() {
        self.params = BuilderParams()
    }
    func build() -> UISegmentedControl {
        let segment = UISegmentedControl(frame: .zero)
        if let arr = self.params?.arr {
            for model:(String,Int,Bool) in arr {
                segment.insertSegment(withTitle: model.0, at: model.1, animated: model.2)
            }
        }
        segment.backgroundColor = self.params?.backgroundColor
        segment.tintColor = self.params?.tintColor
        segment.selectedSegmentTintColor = self.params?.selectedSegmentTintColor
        segment.layer.borderColor = self.params?.borderColor
        segment.layer.borderWidth = self.params?.borderWidth ?? 0
        segment.layer.cornerRadius = self.params?.cornerRadius ?? 0
        
        let dic:NSDictionary = [NSAttributedString.Key.foregroundColor:self.params?.textColor ?? UIColor.black,NSAttributedString.Key.font:self.params?.font ?? UIFont.systemFont(ofSize: 16)];
        segment.setTitleTextAttributes(dic as? [NSAttributedString.Key : Any], for: UIControl.State.normal);
        return segment
    }
    
    func insertSegment(withTitle title: String, at segment: Int, animated: Bool)-> QBUISegmentedControl{
        self.params?.arr?.append((title: title, at: segment , animated: animated ))
        return self
    }
    
    func tintColor(tintColor:UIColor) -> QBUISegmentedControl {
        self.params?.tintColor = tintColor;
        return self
    }
    
    func selectedSegmentTintColor(selectedSegmentTintColor:UIColor) -> QBUISegmentedControl {
        self.params?.selectedSegmentTintColor = selectedSegmentTintColor;
        return self
    }
    func backgroundColor(backgroundColor:UIColor) -> QBUISegmentedControl {
        self.params?.backgroundColor = backgroundColor;
        return self
    }
    
    func borderColor(borderColor:CGColor) -> QBUISegmentedControl {
        self.params?.borderColor = borderColor;
        return self
    }
    
    func borderWidth(borderWidth:CGFloat) -> QBUISegmentedControl {
        self.params?.borderWidth = borderWidth;
        return self
    }
    
    func cornerRadius(cornerRadius:CGFloat) -> QBUISegmentedControl {
        self.params?.cornerRadius = cornerRadius;
        return self
    }
    
    func textColor(textColor:UIColor) -> QBUISegmentedControl {
        self.params?.textColor = textColor;
        return self
    }
    
    func font(font:UIFont) -> QBUISegmentedControl {
        self.params?.font = font;
        return self
    }
    
    class BuilderParams: NSObject {
        override init() {
            self.arr = []
        }
        /// 标题
        var arr:[(title:String,at:Int,animated:Bool)]?
        var tintColor:UIColor?
        var backgroundColor:UIColor?
        var selectedSegmentTintColor:UIColor?
        var borderColor:CGColor?
        var borderWidth:CGFloat?
        var cornerRadius:CGFloat?
        var textColor:UIColor?
        var font:UIFont?

    }
}

