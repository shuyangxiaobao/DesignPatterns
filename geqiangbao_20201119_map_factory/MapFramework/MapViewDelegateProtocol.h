//
//  MapViewDelegateProtocol.h
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/9.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LocationProtocol.h"


//所有的地图都会遵循的MapView中的delegate标准
@protocol MapViewDelegateProtocol <NSObject>

@optional

/**
 *地图区域即将改变时会调用此接口
 *@param animated 是否动画
 */
- (void)mapViewWithRegionWillChangeAnimated:(BOOL)animated;

/**
 *地图区域改变完成后会调用此接口
 *@param animated 是否动画
 */
- (void)mapViewWithRegionDidChangeAnimated:(BOOL)animated;

/**
 * @brief 位置或者设备方向更新后调用此接口
 * @param userLocation 用户定位信息(包括位置与设备方向等数据)->抽象定位协议
 * @param updatingLocation 标示是否是location数据更新, YES:location数据更新 NO:heading数据更新
 */
- (void)mapViewWithdidUpdateUserLocation:(id<LocationProtocol>)userLocation updatingLocation:(BOOL)updatingLocation;

//还有很多方法需要定义...

@end
