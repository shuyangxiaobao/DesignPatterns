//
//  MapEngine.m
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/2.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import "MapEngine.h"
#import "PlatformXmlParser.h"
#import "Platform.h"

@interface MapEngine()

@property(nonatomic, strong) NSMutableArray* array;

@end

//MapEngine你可以标准写法是单利模式(课后自己优化)
@implementation MapEngine

- (instancetype)init{
    self = [super init];
    if (self) {
        [self loadXml];
    }
    return self;
}

-(void)loadXml{
    PlatformXmlParser* parser = [[PlatformXmlParser alloc] init];
    _array = [parser parser];
}

-(id<MapFactoryProtocol>)getFactory{
    for (Platform* platform in _array) {
        if ([platform.isOpen isEqualToString:@"YES"]) {
            return [[NSClassFromString(platform.factoryName) alloc] initWithAppkey:platform.appKey];
        }
    }
    return nil;
}

@end
