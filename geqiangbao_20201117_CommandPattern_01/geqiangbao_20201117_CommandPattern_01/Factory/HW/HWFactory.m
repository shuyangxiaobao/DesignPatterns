//
//  HWFactory.m
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/19.
//

#import "HWFactory.h"

@implementation HWFactory

- (id<ComputerProtocol>)getComputer {
    return [[HWComputer alloc]init];
}

@end
