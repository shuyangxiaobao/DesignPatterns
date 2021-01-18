//
//  BaiduUserLocatioin.h
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/4.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LocationProtocol.h"
#import <BaiduMapAPI_Map/BMKMapComponent.h>
#import <BMKLocationkit/BMKLocationComponent.h>

@interface BaiduUserLocatioin : BMKUserLocation

- (instancetype)init:(CLLocation*)location;

@end
