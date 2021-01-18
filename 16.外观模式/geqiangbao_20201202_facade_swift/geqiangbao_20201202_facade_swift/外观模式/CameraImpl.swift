//
//  CameraImpl.swift
//  geqiangbao_20201202_facade_swift
//
//  Created by xiaobao on 2020/12/2.
//

import Foundation

class CameraImpl: CameraProtocol {
    func openCamera() {
        print("打开相机")
    }
    
    func takePicuure() {
        print("拍照")
    }
    
    func closeCamera() {
        print("关闭相机")
    }
    
    
}
