//
//  BaiduMapView.m
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/2.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import "BaiduMapView.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapView.h>//只引入所需的单个头文件
#import "BaiduUserLocatioin.h"
#import "BaiduLocation.h"


@interface BMKMapViewDelegateImpl : NSObject<BMKMapViewDelegate>
@property(nonatomic, strong) id<MapViewDelegateProtocol> delegateProtocol;

@end

@implementation BMKMapViewDelegateImpl

- (instancetype)init:(id<MapViewDelegateProtocol>) delegateProtocol{
    self = [super init];
    if (self) {
        self.delegateProtocol = delegateProtocol;
    }
    return self;
}


/**
 *地图区域即将改变时会调用此接口
 *@param mapView 地图View
 *@param animated 是否动画
 */
- (void)mapView:(BMKMapView *)mapView regionWillChangeAnimated:(BOOL)animated{
    [self.delegateProtocol mapViewWithRegionWillChangeAnimated:animated];
}


/**
 *地图区域改变完成后会调用此接口
 *@param mapView 地图View
 *@param animated 是否动画
 */
- (void)mapView:(BMKMapView *)mapView regionDidChangeAnimated:(BOOL)animated{
    [self.delegateProtocol mapViewWithRegionDidChangeAnimated:animated];
}


/**
 *动态更新我的位置数据
 *    @param    [in]    userLocation    定位数据
 */
-(void)updateLocationData:(BMKUserLocation *)userLocation{
    id<LocationProtocol> baidu = [[BaiduLocation alloc]init:userLocation.location];
    [self.delegateProtocol mapViewWithdidUpdateUserLocation:baidu updatingLocation:YES];
}

- (void)mapview:(BMKMapView *)mapView onDoubleClick:(CLLocationCoordinate2D)coordinate{
    CLLocation* location = [[CLLocation alloc] initWithLatitude:coordinate.latitude longitude:coordinate.longitude];
    
//     CLLocationCoordinate2DMake(coordinate.latitude, coordinate.longitude);
    
    id<LocationProtocol> baidu = [[BaiduLocation alloc]init:location];
    [self.delegateProtocol mapViewWithdidUpdateUserLocation:baidu updatingLocation:YES];
    
}



@end




@interface BaiduMapView (){
    BMKMapView* _mapView;
    .....
}
@property(nonatomic, strong)  id<BMKMapViewDelegate> mapDelegate;

@end

//具体百度地图
@implementation BaiduMapView

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super init];
    if (self) {
         //初始化百度地图了
        _mapView = [[BMKMapView alloc]initWithFrame:frame];
    }
    return self;
}

-(void)setDelegate:(id<MapViewDelegateProtocol>)delegate{
    
    self.mapDelegate = [[BMKMapViewDelegateImpl alloc]init:delegate];
    _mapView.delegate = self.mapDelegate;
}


-(UIView*)getView{
    return _mapView;
}

-(void)setShowsUserLocation:(BOOL)isShowsUserLocation{
    _mapView.showsUserLocation = isShowsUserLocation;
}

//做一个处理->添加图层->大头针
-(void)addAnnotation:(id<LocationProtocol>)location{
    //优化->进一步抽象
    BMKPointAnnotation *pointAnnotation = [[BMKPointAnnotation alloc]init];
    pointAnnotation.coordinate = [location getLocation].coordinate;
    NSArray *arr = [_mapView annotations];
    [_mapView removeAnnotations:arr];
    [_mapView addAnnotation:pointAnnotation];
}

- (void)setCenterCoordinate:(id<LocationProtocol>)location animated:(BOOL)animated{
    BaiduUserLocatioin* user = [[BaiduUserLocatioin alloc] init:[location getLocation]];
    BMKUserLocation *bmkUserLocation = [[BMKUserLocation alloc]init];
    bmkUserLocation.location = location.getLocation;
    
//     *动态更新我的位置数据
    [_mapView updateLocationData:user];
    //里面还有一些关于location处理
    [_mapView setCenterCoordinate:[location getLocation].coordinate animated:animated];
}

- (void)setTrackingMode:(TrackingMode)trackingMode {
    switch (trackingMode) {
        case TrackingModeNone:
            _mapView.userTrackingMode = BMKUserTrackingModeNone;
            break;
        case TrackingModeFollow:
            _mapView.userTrackingMode = BMKUserTrackingModeFollow;
            break;
        case TrackingModeFollowWithHeading:
            _mapView.userTrackingMode = BMKUserTrackingModeFollowWithHeading;
            break;
        default:
            _mapView.userTrackingMode = BMKUserTrackingModeNone;
            break;
    }
}


//typedef enum {
//    BMKUserTrackingModeNone = 0,             /// 普通定位模式
//    BMKUserTrackingModeHeading,              /// 定位方向模式
//    BMKUserTrackingModeFollow,               /// 定位跟随模式
//    BMKUserTrackingModeFollowWithHeading,    /// 定位罗盘模式
//} BMKUserTrackingMode;
//
//
//typedef NS_ENUM(NSInteger, TrackingMode){
//    ///< 不追踪用户的location更新
//    TrackingModeNone              = 0,
//    ///< 追踪用户的location更新
//    TrackingModeFollow            = 1,
//    ///< 追踪用户的location与heading更新
//    TrackingModeFollowWithHeading = 2
//};

@end
