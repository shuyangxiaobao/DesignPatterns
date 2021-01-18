//
//  QBUILabel.swift
//  geqiangbao_20201124_Builder_Swift
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

class QBUILabel: NSObject {
    class Builder: NSObject {
        var text:String?
        var textColor:UIColor?
        var font:UIFont?
        var textAlignment: NSTextAlignment?
        var cornerRadius:CGFloat?
        
        func text(_ text:String) -> Builder {
            self.text = text
            return self
        }
        func textColor(_ textColor:UIColor) -> Builder {
            self.textColor = textColor
            return self
        }
        func font(_ font:UIFont) -> Builder {
            self.font = font
            return self
        }
        func textAlignment(_ textAlignment:NSTextAlignment) -> Builder {
            self.textAlignment = textAlignment
            return self
        }
        func cornerRadius(_ cornerRadius:CGFloat) -> Builder {
            self.cornerRadius = cornerRadius
            return self
        }
    
        func build() -> UILabel {
            let label = UILabel(frame: .zero)
            label.text = self.text;
            label.textColor = self.textColor;
            label.font = self.font
            label.textAlignment = self.textAlignment ?? .left
            label.layer.cornerRadius = self.cornerRadius ?? 0.0;
            return label;
        }
        
        
    }
 
}

