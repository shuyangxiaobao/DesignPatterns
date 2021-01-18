//
//  BaiduUserLocatioin.m
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/4.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import "BaiduUserLocatioin.h"

@implementation BaiduUserLocatioin

//给我们的BMKUserLocation里面的location属性赋值
@synthesize location = _location;

- (instancetype)init:(CLLocation*)location{
    self = [super init];
    if (self) {
        _location = location;
    }
    return self;
}

-(CLLocation *)getLocation{
    return _location;
}

-(NSString*)getLocationID{
    return @"";
}

@end
