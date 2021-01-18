//
//  GaodeLocation.h
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/6.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LocationProtocol.h"

@interface GaodeLocation : NSObject<LocationProtocol>

- (instancetype)init:(CLLocation*)location;

@end
