//
//  GaodeMapView.m
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/2.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import "GaodeMapView.h"
#import <MAMapKit/MAMapKit.h>
#import <AMapFoundationKit/AMapFoundationKit.h>
#import "GaodeLocation.h"


//实现百度delegate
@interface MAMapViewDelegateImpl : NSObject<MAMapViewDelegate>

//定义回调
@property(nonatomic, strong) id<MapViewDelegateProtocol> delegateProtocol;

@end

@implementation MAMapViewDelegateImpl

- (instancetype)init:(id<MapViewDelegateProtocol>) delegateProtocol{
    self = [super init];
    if (self) {
        self.delegateProtocol = delegateProtocol;
    }
    return self;
}

/**
 * @brief 地图区域即将改变时会调用此接口
 * @param mapView 地图View
 * @param animated 是否动画
 */
- (void)mapView:(MAMapView *)mapView regionWillChangeAnimated:(BOOL)animated{
    [self.delegateProtocol mapViewWithRegionWillChangeAnimated:animated];
}

/**
 * @brief 地图区域改变完成后会调用此接口
 * @param mapView 地图View
 * @param animated 是否动画
 */
- (void)mapView:(MAMapView *)mapView regionDidChangeAnimated:(BOOL)animated{
    [self.delegateProtocol mapViewWithRegionDidChangeAnimated:animated];
}

- (void)mapView:(MAMapView *)mapView didUpdateUserLocation:(MAUserLocation *)userLocation updatingLocation:(BOOL)updatingLocation{
    
    
    id<LocationProtocol> gaode = [[GaodeLocation alloc] init:userLocation.location];
    [self.delegateProtocol mapViewWithdidUpdateUserLocation:gaode updatingLocation:updatingLocation];
}

//...大家自己扩展

@end


@interface GaodeMapView (){
    MAMapView* _mapView;
   
}
@property(nonatomic, strong)  id<MAMapViewDelegate> mapDelegate;
@end

//具体高德地图
@implementation GaodeMapView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super init];
    if (self) {
        //初始化高德地图了
        _mapView = [[MAMapView alloc] initWithFrame:frame];
    }
    return self;
}

-(UIView*)getView{
    return _mapView;
}

-(void)setDelegate:(id<MapViewDelegateProtocol>)delegate{
    //保证对象不被释放
    self.mapDelegate = [[MAMapViewDelegateImpl alloc] init:delegate];
    _mapView.delegate = self.mapDelegate;
}

-(void)setShowsUserLocation:(BOOL)isShowsUserLocation{
    _mapView.showsUserLocation = isShowsUserLocation;
}

//做一个处理->添加图层->大头针
-(void)addAnnotation:(id<LocationProtocol>)location{
    //优化->进一步抽象
    MAPointAnnotation *pointAnnotation = [[MAPointAnnotation alloc]init];
    pointAnnotation.coordinate = [location getLocation].coordinate;
    [_mapView addAnnotation:pointAnnotation];
}

- (void)setCenterCoordinate:(id<LocationProtocol>)location animated:(BOOL)animated{
    [_mapView setCenterCoordinate:[location getLocation].coordinate];
}

///定位用户位置的模式
-(void)setTrackingMode:(TrackingMode)trackingMode{
    switch (trackingMode) {
        case TrackingModeNone:
            _mapView.userTrackingMode = MAUserTrackingModeNone;
            break;
        case TrackingModeFollow:
            _mapView.userTrackingMode = MAUserTrackingModeFollow;
            break;
        case TrackingModeFollowWithHeading:
            _mapView.userTrackingMode = MAUserTrackingModeFollowWithHeading;
            break;
        default:
            _mapView.userTrackingMode = MAUserTrackingModeNone;
            break;
    }
}

@end
