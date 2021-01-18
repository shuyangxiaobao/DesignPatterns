//
//  MapLocationDelegateProtocol.h
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/4.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LocationProtocol.h"

//地图回调
//方式有些差别
//处理这些差别
@protocol MapLocationDelegateProtocol<NSObject>

/**
 *  @brief 当定位发生错误时，会调用代理的此方法。
 *  @param error 返回的错误，参考 CLError 。
 */
- (void)locationWithError:(NSError * _Nullable)error;

/**
 *  @brief 连续定位回调函数。
 *  @param location 定位结果，参考BMKLocation。
 *  @param error 错误信息。
 */
- (void)locationWithUpdateLocation:(id<LocationProtocol> _Nullable)location orError:(NSError * _Nullable)error;

/**
 *  @brief 定位权限状态改变时回调函数。
 *  @param status 定位权限状态。
 */
- (void)locationWithChangeAuthorizationStatus:(CLAuthorizationStatus)status;

/**
 * @brief 该方法为BMKLocationManager提示需要设备校正回调方法。
 */
- (BOOL)locationManagerShouldDisplayHeadingCalibration;

/**
 * @brief 该方法为BMKLocationManager提供设备朝向的回调方法。
 * @param heading 设备的朝向结果
 */
- (void)locationWithUpdateHeading:(CLHeading * _Nullable)heading;


@end
