//
//  QBUIButton.swift
//  geqiangbao_20201124_Builder_Swift
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

class QBUIButton: NSObject {
    private var params:BuilderParams?
    private var context:UIViewController?
    init(_ context:UIViewController) {
        self.params = BuilderParams()
    }
    
    func build() -> UIButton {
        let button = UIButton(frame: .zero)
        button.setTitle(self.params?.title_normal, for: .normal)
        button.setImage(self.params?.image, for: .normal)
        button.setTitleColor(self.params?.titleColor, for: .normal)
        button.layer.cornerRadius = self.params?.cornerRadius ?? 0.0
        button.layer.masksToBounds =  self.params?.masksToBounds ?? false
        button.backgroundColor = self.params?.backgroundColor
        button.titleLabel?.font = self.params?.font
        if (self.params?.buttonClick) != nil {
            button.addTarget(self, action: #selector(myClick), for: .touchUpInside)
        }
        return button;
    }
    func title_normal(_ title_normal:String) -> QBUIButton {
        self.params?.title_normal = title_normal
        return self
    }
    
    func image(_ image:UIImage) -> QBUIButton {
        self.params?.image = image
        return self
    }
    
    func titleColor(_ titleColor:UIColor) -> QBUIButton {
        self.params?.titleColor = titleColor
        return self
    }
    func cornerRadius(_ cornerRadius:CGFloat) -> QBUIButton {
        self.params?.cornerRadius = cornerRadius
        return self
    }
    func masksToBounds(_ masksToBounds:Bool) -> QBUIButton {
        self.params?.masksToBounds = masksToBounds
        return self
    }
    func backgroundColor(_ backgroundColor:UIColor) -> QBUIButton {
        self.params?.backgroundColor = backgroundColor
        return self
    }
    
    func font(_ font:UIFont) -> QBUIButton {
        self.params?.font = font
        return self
    }
    
    /// 设置点击事件
    /// - Parameter buttonClick:
    /// - Returns:
    func setClick(_ buttonClick:@escaping ((UIButton) -> Void)) -> QBUIButton {
        self.params?.buttonClick = buttonClick
        return self
    }
    
    @objc func myClick(button:UIButton)  {
        self.params?.buttonClick?(button)
    }

    
    class BuilderParams: NSObject {
        /// 标题
        var title_normal:String?
        
        /// 图像
        var image:UIImage?
        
        /// 字体颜色
        var titleColor:UIColor?
        
        /// 圆角
        var cornerRadius: CGFloat?
        
        /// 背景色
        var backgroundColor:UIColor?
        
        var masksToBounds:Bool?
        
        /// 字体
        var font:UIFont?
        
        /// 点击事件
        var buttonClick:((UIButton) -> Void)?
        
    }
}
