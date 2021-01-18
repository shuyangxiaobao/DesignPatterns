//
//  LocationProtocol.h
//  Dream_20180702_Factory_LBS_Demo
//
//  Created by Dream on 2018/7/4.
//  Copyright © 2018年 Tz. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>

//抽象产品类(一个产品类)
@protocol LocationProtocol<NSObject>

//只能够获取，不能设置(暂时规定)->修改
-(CLLocation *)getLocation;
-(NSString*)getLocationID;

//其他的信息暂时放一边

@end
