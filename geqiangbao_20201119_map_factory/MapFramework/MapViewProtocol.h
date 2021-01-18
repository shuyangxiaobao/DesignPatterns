//
//  MapViewProtocol.h
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/2.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LocationProtocol.h"
#import "MapViewDelegateProtocol.h"


typedef NS_ENUM(NSInteger, TrackingMode){
    ///< 不追踪用户的location更新
    TrackingModeNone              = 0,
    ///< 追踪用户的location更新
    TrackingModeFollow            = 1,
    ///< 追踪用户的location与heading更新
    TrackingModeFollowWithHeading = 2
};


//面试时候->讲不清楚逻辑关系(过程)
//地图标准
@protocol MapViewProtocol<NSObject>

- (instancetype)initWithFrame:(CGRect)frame;



//规范->父类的引用指向子类的实例对象
-(UIView*)getView;

@required
-(void)setDelegate:(id<MapViewDelegateProtocol>)delegate;

//...地图类型、地图语言、是否开启交通....
//先忽略...

//设定是否显示定位图层(set方法)
-(void)setShowsUserLocation:(BOOL)isShowsUserLocation;

- (void)setCenterCoordinate:(id<LocationProtocol>)location animated:(BOOL)animated;

-(void)addAnnotation:(id<LocationProtocol>)location;

///定位用户位置的模式
-(void)setTrackingMode:(TrackingMode)trackingMode;

@end
