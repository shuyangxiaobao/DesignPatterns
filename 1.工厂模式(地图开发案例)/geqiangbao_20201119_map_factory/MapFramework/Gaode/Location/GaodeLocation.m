//
//  GaodeLocation.m
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/6.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import "GaodeLocation.h"


@interface GaodeLocation (){
    CLLocation* _location;
}
@end

@implementation GaodeLocation

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
    return @"位置信息";
}

@end
