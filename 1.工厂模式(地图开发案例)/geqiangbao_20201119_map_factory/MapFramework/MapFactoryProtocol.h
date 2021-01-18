//
//  MapFactoryProtocol.h
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/2.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MapViewProtocol.h"
#import "MapLocationProtocol.h"

//面试时候->讲不清楚逻辑关系(过程)
//地图工厂标准
//抽象工厂非常简单
@protocol MapFactoryProtocol<NSObject>

- (instancetype)initWithAppkey:(NSString*)appkey;
//地图标准
-(id<MapViewProtocol>)getMapViewWithFrame:(CGRect)frame;

//增加流水线
-(id<MapLocationProtocol>)getMaplocation;

//导航、搜索...

@end
