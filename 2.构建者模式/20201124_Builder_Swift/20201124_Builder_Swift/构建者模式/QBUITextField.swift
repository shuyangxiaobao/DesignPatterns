//
//  QBUITextField.swift
//  geqiangbao_20201124_Builder_Swift
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

class QBUITextField: NSObject {
    private var params:BuilderParams?
    override init() {
        self.params = BuilderParams()
    }
    func build() -> UITextField {
        let field = UITextField(frame: .zero)
        field.text = self.params?.text
        field.attributedText = self.params?.attributedText
        field.textColor = self.params?.textColor
        field.font = self.params?.font
        field.textAlignment = self.params?.textAlignment ?? .left
        field.borderStyle = self.params?.borderStyle ?? .none
        field.placeholder = self.params?.placeholder
        field.attributedPlaceholder = self.params?.attributedPlaceholder
        field.adjustsFontSizeToFitWidth = ((self.params?.adjustsFontSizeToFitWidth) != nil)
        field.delegate = self.params?.delegate
        return field
    }
    
    func text(_ text:String) -> QBUITextField {
        self.params?.text = text
        return self
    }
    
    func attributedText(_ attributedText:NSAttributedString) -> QBUITextField {
        self.params?.attributedText = attributedText
        return self
    }
    
    func textColor(_ textColor:UIColor) -> QBUITextField {
        self.params?.textColor = textColor
        return self
    }
    
    func font(_ font: UIFont) -> QBUITextField {
        self.params?.font = font
        return self
    }
    
    func textAlignment(_ textAlignment: NSTextAlignment) -> QBUITextField {
        self.params?.textAlignment = textAlignment
        return self
    }
    
    class BuilderParams: NSObject {
        open var text: String? // default is nil

        @NSCopying open var attributedText: NSAttributedString? // default is nil

        open var textColor: UIColor? // default is nil. use opaque black

        open var font: UIFont? // default is nil. use system font 12 pt

        open var textAlignment: NSTextAlignment? // default is NSLeftTextAlignment

        open var borderStyle: UITextField.BorderStyle? // default is UITextBorderStyleNone. If set to UITextBorderStyleRoundedRect, custom background images are ignored.


        open var placeholder: String? // default is nil. string is drawn 70% gray

        @NSCopying open var attributedPlaceholder: NSAttributedString? // default is nil


        open var adjustsFontSizeToFitWidth: Bool? // default is NO. if YES, text will shrink to minFontSize along baseline


        weak open var delegate: UITextFieldDelegate? // default is nil. weak reference


    }
}




