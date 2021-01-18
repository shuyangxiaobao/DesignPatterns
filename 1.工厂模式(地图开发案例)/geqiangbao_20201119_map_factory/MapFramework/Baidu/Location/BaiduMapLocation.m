//
//  BaiduMapLocation.m
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/4.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import "BaiduMapLocation.h"
//开发框架和分析
#import <BMKLocationkit/BMKLocationComponent.h>
//#import <BaiduMapAPI_Location/BMKLocationComponent.h>//引入定位功能所有的头文件
#import "BaiduLocation.h"



//实现百度delegate
@interface BMKLocationManagerDelegateImpl : NSObject<BMKLocationManagerDelegate>

//定义回调
@property(nonatomic, strong) id<MapLocationDelegateProtocol> delegateProtocol;

@end

@implementation BMKLocationManagerDelegateImpl

- (instancetype)init:(id<MapLocationDelegateProtocol>) delegateProtocol{
    self = [super init];
    if (self) {
        self.delegateProtocol = delegateProtocol;
    }
    return self;
}

/**
 *  @brief 当定位发生错误时，会调用代理的此方法。
 *  @param manager 定位 BMKLocationManager 类。
 *  @param error 返回的错误，参考 CLError 。
 */
- (void)BMKLocationManager:(BMKLocationManager * _Nonnull)manager didFailWithError:(NSError * _Nullable)error{
    [self.delegateProtocol locationWithError:error];
}


/**
 *  @brief 连续定位回调函数。
 *  @param manager 定位 BMKLocationManager 类。
 *  @param location 定位结果，参考BMKLocation。
 *  @param error 错误信息。
 */
- (void)BMKLocationManager:(BMKLocationManager * _Nonnull)manager didUpdateLocation:(BMKLocation * _Nullable)location orError:(NSError * _Nullable)error{
    id<LocationProtocol> baidu = [[BaiduLocation alloc] init:location.location];
    [self.delegateProtocol locationWithUpdateLocation:baidu orError:error];
}

/**
 *  @brief 定位权限状态改变时回调函数
 *  @param manager 定位 BMKLocationManager 类。
 *  @param status 定位权限状态。
 */
- (void)BMKLocationManager:(BMKLocationManager * _Nonnull)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status{
    [self.delegateProtocol locationWithChangeAuthorizationStatus:status];
}


/**
 * @brief 该方法为BMKLocationManager提示需要设备校正回调方法。
 * @param manager 提供该定位结果的BMKLocationManager类的实例。
 */
- (BOOL)BMKLocationManagerShouldDisplayHeadingCalibration:(BMKLocationManager * _Nonnull)manager{
    return [self.delegateProtocol locationManagerShouldDisplayHeadingCalibration];
}

/**
 * @brief 该方法为BMKLocationManager提供设备朝向的回调方法。
 * @param manager 提供该定位结果的BMKLocationManager类的实例
 * @param heading 设备的朝向结果
 */
- (void)BMKLocationManager:(BMKLocationManager * _Nonnull)manager
          didUpdateHeading:(CLHeading * _Nullable)heading{
    [self.delegateProtocol locationWithUpdateHeading:heading];
}

/**
 * @brief 该方法为BMKLocationManager所在App系统网络状态改变的回调事件。
 * @param manager 提供该定位结果的BMKLocationManager类的实例
 * @param state 当前网络状态
 * @param error 错误信息
 */
- (void)BMKLocationManager:(BMKLocationManager * _Nonnull)manager
     didUpdateNetworkState:(BMKLocationNetworkState)state orError:(NSError * _Nullable)error{
    
}

@end


@interface BaiduMapLocation ()

@property(nonatomic, strong) BMKLocationManager *locationManager;
@property(nonatomic, strong) id<BMKLocationManagerDelegate> locdelegate;

@end

//实现百度
@implementation BaiduMapLocation

- (instancetype)init{
    self = [super init];
    if (self) {
        _locationManager = [[BMKLocationManager alloc] init];
        
        //持续定位
         _locationManager.coordinateType = BMKLocationCoordinateTypeGCJ02;
         _locationManager.desiredAccuracy = kCLLocationAccuracyBest;
         _locationManager.activityType = CLActivityTypeAutomotiveNavigation;
         _locationManager.pausesLocationUpdatesAutomatically = NO;
         // YES的话是可以进行后台定位的，但需要项目配置，否则会报错，具体参考开发文档
         _locationManager.allowsBackgroundLocationUpdates = YES;
         _locationManager.locationTimeout = 10;
         _locationManager.reGeocodeTimeout = 10;
    }
    return self;
}

//监听
-(void)setLocationDelegate:(id<MapLocationDelegateProtocol>)delegate{
    //自定义一个实现类->MapLocationDelegateProtocol
    //解决方案？->需要一个类->实现类
    //我也不知道?
    //分析实现->很麻烦？（非常麻烦）
    //涉及到很多数据类型不统一(需要统一)
    //父类的引用指向子类的实例对象
    self.locdelegate = [[BMKLocationManagerDelegateImpl alloc] init:delegate];
    _locationManager.delegate = self.locdelegate;
}

//开始
-(void)startLocation{
    //调用百度开始定位
    [_locationManager startUpdatingLocation];
}

//停止
-(void)stopLocatioin{
    //调用百度停止定位
    [_locationManager stopUpdatingLocation];
}

//单次定位
- (BOOL)requestLocationWithReGeocode:(BOOL)withReGeocode withNetworkState:(BOOL)withNetWorkState completionBlock:(MapLocatingCompletionBlock _Nonnull)completionBlock{
    //单独实现百度单次定位block
    BMKLocatingCompletionBlock block = ^(BMKLocation *location, BMKLocationNetworkState state, NSError *error){
        //回调给客户端->自定义block(统一标准和规范)
        NSLog(@"定位回调...");
        BaiduLocation* baidu = [[BaiduLocation alloc] init:location.location];
        completionBlock(baidu, error);
        if (error){
            NSLog(@"locError:{%ld - %@};", (long)error.code, error.localizedDescription);
        }
        if (location) {//得到定位信息，添加annotation
            if (location.location) {
                NSLog(@"定位成功...");
                NSLog(@"LOC = %@",location.location);
            }
        }
    };
    return [_locationManager requestLocationWithReGeocode:withReGeocode withNetworkState:withNetWorkState completionBlock:block];;
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






