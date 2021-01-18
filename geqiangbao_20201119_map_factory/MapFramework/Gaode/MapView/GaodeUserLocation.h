//
//  GaodeUserLocation.h
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/9.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>

@interface GaodeUserLocation : MAUserLocation

- (instancetype)init:(CLLocation*)location;

@end
