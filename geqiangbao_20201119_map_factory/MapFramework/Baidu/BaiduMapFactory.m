//
//  BaiduMapFactory.m
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/2.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import "BaiduMapFactory.h"
#import "BaiduMapView.h"
#import <BaiduMapAPI_Base/BMKBaseComponent.h>//引入base相关所有的头文件
#import <BaiduMapAPI_Map/BMKMapView.h>//只引入所需的单个头文件
//#import <BaiduMapAPI_Location/BMKLocationComponent.h>//引入定位功能所有的头文件
#import "BaiduMapLocation.h"
#import <BMKLocationkit/BMKLocationComponent.h>
#import <BMKLocationkit/BMKLocationAuth.h>

@interface BaiduMapFactory ()<BMKGeneralDelegate, BMKLocationAuthDelegate>{
    BMKMapManager* _mapManager;
}
@end

@implementation BaiduMapFactory

- (instancetype)initWithAppkey:(NSString*)appkey{
    self = [super init];
    if (self) {
        [[BMKLocationAuth sharedInstance] checkPermisionWithKey:appkey authDelegate:self];
        //地图初始化工作完成了
        _mapManager = [[BMKMapManager alloc] init];
        // 如果要关注网络及授权验证事件，请设定     generalDelegate参数
        BOOL ret = [_mapManager start:appkey generalDelegate:self];
        if (!ret) {
            NSLog(@"manager start failed!");
        }
    }
    return self;
}

-(id<MapViewProtocol>)getMapViewWithFrame:(CGRect)frame{
    return [[BaiduMapView alloc] initWithFrame:frame];
}

-(id<MapLocationProtocol>)getMaplocation{
    return [[BaiduMapLocation alloc] init];
}

- (void)onGetNetworkState:(int)iError{
    if (0 == iError) {
        NSLog(@"联网成功");
    }else{
        NSLog(@"onGetNetworkState %d",iError);
    }
}

- (void)onGetPermissionState:(int)iError{
    if (0 == iError) {
        NSLog(@"授权成功");
    } else {
        NSLog(@"onGetPermissionState %d",iError);
    }
}

- (void)onCheckPermissionState:(BMKLocationAuthErrorCode)iError{
    NSLog(@"location auth onGetPermissionState %ld",(long)iError);
}

@end
