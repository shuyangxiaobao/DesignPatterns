//
//  MapEngine.h
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/2.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MapFactoryProtocol.h"

//地图引擎创建谁?->工厂标准我们是知道的
@interface MapEngine : NSObject

-(id<MapFactoryProtocol>)getFactory;

@end
