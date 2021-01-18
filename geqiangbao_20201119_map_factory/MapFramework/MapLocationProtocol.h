//
//  MapLocationProtocol.h
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/4.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapLocationDelegateProtocol.h"
#import "LocationProtocol.h"

typedef void (^MapLocatingCompletionBlock)(id<LocationProtocol> _Nullable location, NSError * _Nullable error);

//抽象产品类
@protocol MapLocationProtocol<NSObject>

//监听
-(void)setLocationDelegate:(id<MapLocationDelegateProtocol>)delegate;

//开始
-(void)startLocation;

//停止
-(void)stopLocatioin;

//单次定位->方法
- (BOOL)requestLocationWithReGeocode:(BOOL)withReGeocode withNetworkState:(BOOL)withNetWorkState completionBlock:(MapLocatingCompletionBlock _Nonnull)completionBlock;

//新增属性
-(void)setDesiredAccuracy:(CLLocationAccuracy)desiredAccuracy;
-(void)setDistanceFilter:(CLLocationDistance)distanceFilter;
-(void)setPausesLocationUpdatesAutomatically:(BOOL)pausesLocationUpdatesAutomatically;
-(void)setAllowsBackgroundLocationUpdates:(BOOL)allowsBackgroundLocationUpdates;
-(void)setLocationTimeout:(NSInteger)locationTimeout;
-(void)setReGeocodeTimeout:(NSInteger)reGeocodeTimeout;

@end
