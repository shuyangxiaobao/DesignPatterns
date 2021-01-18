//
//  ViewController.m
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/2.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import "ViewController.h"
#import "GaodeMapFactory.h"
#import "BaiduMapFactory.h"
#import "MapEngine.h"


@interface ViewController ()<MapLocationDelegateProtocol, MapViewDelegateProtocol>
@property(nonatomic,strong)id<MapLocationProtocol> location;
@property(nonatomic,strong)id<MapViewProtocol> mapView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    //重构之后的代码
    //修改内部结构
    //外部调用没有任何修改
//    MapEngine* engine = [[MapEngine alloc] init];
//    id<MapFactoryProtocol> factory = [engine getFactory];
//    self.mapView = [factory getMapViewWithFrame:self.view.frame];
//    [self.mapView setShowsUserLocation:YES];
//    [self.view addSubview:[self.mapView getView]];
    
    
    //location局部变量->意味着一旦方法执行完毕，那么对象将被释放，所以在定位的时候
    //那么就会抛异常
    //定义为全局变量即可
    //问题:一直没有回调
    //注意：定义为全局变量
//    self.location = [factory getMaplocation];
//    [self.location setLocationDelegate:self];
//    //设置期望定位精度
//    [self.location setDesiredAccuracy:kCLLocationAccuracyHundredMeters];
//    //设置不允许系统暂停定位
//    [self.location setPausesLocationUpdatesAutomatically:NO];
//    //设置允许在后台定位
//    [self.location setAllowsBackgroundLocationUpdates:YES];
//    //设置定位超时时间
//    [self.location setLocationTimeout:10];
//    //设置逆地理超时时间
//    [self.location setReGeocodeTimeout:10];
//    //单次定位->聚合SDK通用block
//    [self.location requestLocationWithReGeocode:YES withNetworkState:YES completionBlock:^(id<LocationProtocol>  _Nullable location, NSError * _Nullable error) {
//        NSLog(@"block定位回调成功...");
//        //设置定位图层
//        [self.mapView addAnnotation:location];
//        [self.mapView setCenterCoordinate:location animated:YES];
//    }];
    
    //多次定位->聚合SDK通用->delegate
//    [self.location startLocation];
    
    
    //地图自带定位
    MapEngine* engine = [[MapEngine alloc] init];
    id<MapFactoryProtocol> factory = [engine getFactory];
    self.mapView = [factory getMapViewWithFrame:self.view.frame];
    
    [self.view addSubview:[self.mapView getView]];
    [self.mapView setDelegate:self];
    [self.mapView setShowsUserLocation:YES];
    [self.mapView setTrackingMode:(TrackingModeFollowWithHeading)];
//    [self.mapView setTrackingMode:TrackingModeFollowWithHeading];
    
    
//   id<MapLocationProtocol> maplocation = [factory getMaplocation];
//    self.location = maplocation;
    
//    单次定位
//    [self.location requestLocationWithReGeocode:YES withNetworkState:YES completionBlock:^(id<LocationProtocol>  _Nullable location, NSError * _Nullable error) {
//        [self.mapView setCenterCoordinate:location animated:YES];
//    }];
    
//    连续定位
//    [maplocation setLocationDelegate:self];
//    [maplocation startLocation];
}

//错误
- (void)locationWithError:(NSError * _Nullable)error{
    NSLog(@"发送了错误...");
}

//成功
- (void)locationWithUpdateLocation:(id<LocationProtocol> _Nullable)location orError:(NSError * _Nullable)error{
    NSLog(@"成功回调了...");
    [self.mapView addAnnotation:location];
    [self.mapView setCenterCoordinate:location animated:YES];
}

- (void)locationWithChangeAuthorizationStatus:(CLAuthorizationStatus)status{
    NSLog(@"成功回调了...");
}


/**
 *地图区域即将改变时会调用此接口
 *@param animated 是否动画
 */
- (void)mapViewWithRegionWillChangeAnimated:(BOOL)animated{
    NSLog(@"回调了-->mapViewWithRegionWillChangeAnimated");
}

/**
 *地图区域改变完成后会调用此接口
 *@param animated 是否动画
 */
- (void)mapViewWithRegionDidChangeAnimated:(BOOL)animated{
    NSLog(@"回调了-->mapViewWithRegionDidChangeAnimated");
}

- (void)mapViewWithdidUpdateUserLocation:(id<LocationProtocol>)userLocation updatingLocation:(BOOL)updatingLocation{
    [self.mapView addAnnotation:userLocation];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/**
 *  @brief 连续定位回调函数。
 *  @param location 定位结果，参考BMKLocation。
 *  @param error 错误信息。
 */


@end
