//
//  AppleFactory.m
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/19.
//

#import "AppleFactory.h"

@implementation AppleFactory

- (id<ComputerProtocol>)getComputer { 
    return [[AppleComputer alloc]init];
}

@end
