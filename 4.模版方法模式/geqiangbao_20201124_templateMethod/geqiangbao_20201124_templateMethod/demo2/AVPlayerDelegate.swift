//
//  AVPlayerDelegate.swift
//  Dream_20180713_TemplateMethod
//
//  Created by Dream on 2018/7/13.
//  Copyright © 2018年 Tz. All rights reserved.
//

import Foundation
import AVFoundation

//回调delegate
protocol AVPlayerDelegate {
    func playerCall(status:AVPlayerItem.Status?)
}
