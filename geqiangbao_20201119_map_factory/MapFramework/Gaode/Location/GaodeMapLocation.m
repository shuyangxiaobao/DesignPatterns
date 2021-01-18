//
//  GaodeMapLocation.m
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/4.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import "GaodeMapLocation.h"
#import <MAMapKit/MAMapKit.h>
#import <AMapLocationKit/AMapLocationKit.h>
#import "GaodeLocation.h"

#define DefaultLocationTimeout 6
#define DefaultReGeocodeTimeout 3




//实现百度delegate
@interface AMapLocationManagerDelegateImpl : NSObject<AMapLocationManagerDelegate>

//定义回调
@property(nonatomic, strong) id<MapLocationDelegateProtocol> delegateProtocol;

@end

@implementation AMapLocationManagerDelegateImpl

- (instancetype)init:(id<MapLocationDelegateProtocol>) delegateProtocol{
    self = [super init];
    if (self) {
        self.delegateProtocol = delegateProtocol;
    }
    return self;
}

/**
 *  @brief 当定位发生错误时，会调用代理的此方法。
 *  @param manager 定位 AMapLocationManager 类。
 *  @param error 返回的错误，参考 CLError 。
 */
- (void)amapLocationManager:(AMapLocationManager *)manager didFailWithError:(NSError *)error{
    NSLog(@"回调了...didFailWithError");
    [self.delegateProtocol locationWithError:error];
}

/**
 *  @brief 连续定位回调函数.注意：本方法已被废弃，如果实现了amapLocationManager:didUpdateLocation:reGeocode:方法，则本方法将不会回调。
 *  @param manager 定位 AMapLocationManager 类。
 *  @param location 定位结果。
 */
- (void)amapLocationManager:(AMapLocationManager *)manager didUpdateLocation:(CLLocation *)location{
    NSLog(@"回调了...didFailWithError");
    GaodeLocation* gaode = [[GaodeLocation alloc] init:location];
    [self.delegateProtocol locationWithUpdateLocation:gaode orError:nil];
}

/**
 *  @brief 定位权限状态改变时回调函数
 *  @param manager 定位 AMapLocationManager 类。
 *  @param status 定位权限状态。
 */
- (void)amapLocationManager:(AMapLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status{
    NSLog(@"回调了...didFailWithError");
    [self.delegateProtocol locationWithChangeAuthorizationStatus:status];
}

/**
 *  @brief 设备方向改变时回调函数
 *  @param manager 定位 AMapLocationManager 类。
 *  @param newHeading 设备朝向。
 */
- (void)amapLocationManager:(AMapLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading{
    NSLog(@"回调了...didFailWithError");
    [self.delegateProtocol locationWithUpdateHeading:newHeading];
}

@end




@interface GaodeMapLocation ()<AMapLocationManagerDelegate>

@property (nonatomic, strong) AMapLocationManager *locationManager;
@property (nonatomic, copy) AMapLocatingCompletionBlock block;
//定义回调
@property(nonatomic, strong) id<AMapLocationManagerDelegate> delegateProtocol;

@end

@implementation GaodeMapLocation

- (instancetype)init{
    self = [super init];
    if (self) {
        self.locationManager = [[AMapLocationManager alloc] init];        
    }
    return self;
}

//监听
-(void)setLocationDelegate:(id<MapLocationDelegateProtocol>)delegate{
    //自定义一个实现类->MapLocationDelegateProtocol
    self.delegateProtocol = [[AMapLocationManagerDelegateImpl alloc] init:delegate];
    self.locationManager.delegate = self.delegateProtocol;
}

//开始
-(void)startLocation{
    //调用高德开始定位
    [self.locationManager startUpdatingLocation];
}

//停止
-(void)stopLocatioin{
    //调用高德停止定位
    [self.locationManager stopUpdatingLocation];
}

//单次定位
-(BOOL)requestLocationWithReGeocode:(BOOL)withReGeocode withNetworkState:(BOOL)withNetWorkState completionBlock:(MapLocatingCompletionBlock)completionBlock{
    //单次定位
    self.block = ^(CLLocation *location, AMapLocationReGeocode *regeocode, NSError *error){
        GaodeLocation* gaode = [[GaodeLocation alloc] init:location];
        completionBlock(gaode, error);
        if (error != nil && error.code == AMapLocationErrorLocateFailed){
            //定位错误：此时location和regeocode没有返回值，不进行annotation的添加
            NSLog(@"定位错误:{%ld - %@};", (long)error.code, error.localizedDescription);
            return;
        }else if (error != nil
                  && (error.code == AMapLocationErrorReGeocodeFailed
                      || error.code == AMapLocationErrorTimeOut
                      || error.code == AMapLocationErrorCannotFindHost
                      || error.code == AMapLocationErrorBadURL
                      || error.code == AMapLocationErrorNotConnectedToInternet
                      || error.code == AMapLocationErrorCannotConnectToHost)){
                      //逆地理错误：在带逆地理的单次定位中，逆地理过程可能发生错误，此时location有返回值，regeocode无返回值，进行annotation的添加
                      NSLog(@"逆地理错误:{%ld - %@};", (long)error.code, error.localizedDescription);
                  }else if (error != nil && error.code == AMapLocationErrorRiskOfFakeLocation){
                      //存在虚拟定位的风险：此时location和regeocode没有返回值，不进行annotation的添加
                      NSLog(@"存在虚拟定位的风险:{%ld - %@};", (long)error.code, error.localizedDescription);
                      return;
                  }else{
                      //没有错误：location有返回值，regeocode是否有返回值取决于是否进行逆地理操作，进行annotation的添加
                  }
    };
    //进行单次带逆地理定位请求
    return [self.locationManager requestLocationWithReGeocode:YES completionBlock:self.block];
}

-(void)setDesiredAccuracy:(CLLocationAccuracy)desiredAccuracy{
    _locationManager.desiredAccuracy = desiredAccuracy;
}
-(void)setDistanceFilter:(CLLocationDistance)distanceFilter{
    _locationManager.distanceFilter = distanceFilter;
}
-(void)setPausesLocationUpdatesAutomatically:(BOOL)pausesLocationUpdatesAutomatically{
    _locationManager.pausesLocationUpdatesAutomatically = pausesLocationUpdatesAutomatically;
}
-(void)setAllowsBackgroundLocationUpdates:(BOOL)allowsBackgroundLocationUpdates{
    _locationManager.allowsBackgroundLocationUpdates = allowsBackgroundLocationUpdates;
}
-(void)setLocationTimeout:(NSInteger)locationTimeout{
    _locationManager.locationTimeout = locationTimeout;
}
-(void)setReGeocodeTimeout:(NSInteger)reGeocodeTimeout{
    _locationManager.reGeocodeTimeout = reGeocodeTimeout;
}

@end
