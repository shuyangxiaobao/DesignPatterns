//
//  QBUIImageView.swift
//  geqiangbao_20201124_Builder_Swift
//
//  Created by xiaobao on 2020/11/24.
//

import UIKit

class QBUIImageView: NSObject {
    
    private var params:BuilderParams?
    override init() {
        self.params = BuilderParams()
    }
    
    func build() -> UIImageView {
        let imageView = UIImageView(frame: .zero)
        imageView.image = self.params?.image
        imageView.backgroundColor = self.params?.backgroundColor
        return imageView
    }
    
    func image(_ image:UIImage) -> QBUIImageView {
        self.params?.image = image
        return self
    }
    
    func backgroundColor(_ backgroundColor:UIColor) -> QBUIImageView {
        self.params?.backgroundColor = backgroundColor
        return self
    }

    class BuilderParams: NSObject {
        var image:UIImage?
        var backgroundColor:UIColor?
    }
}
