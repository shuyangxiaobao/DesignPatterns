//
//  BaiduLocation.m
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/4.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import "BaiduLocation.h"

@interface BaiduLocation (){
    CLLocation* _location;
}
@end

@implementation BaiduLocation

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
//其他属性也是如此


@end
