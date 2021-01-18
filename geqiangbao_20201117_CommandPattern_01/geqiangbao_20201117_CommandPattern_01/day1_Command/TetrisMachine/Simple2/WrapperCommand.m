//
//  WrapperCommand.m
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import "WrapperCommand.h"

@interface WrapperCommand ()
@property (nonatomic,strong) NSMutableArray *commands;
@end

@implementation WrapperCommand


-(instancetype)init:(NSMutableArray *)commands{
    self = [super init];
    if (self) {
        self.commands = commands;
    }
    return self;
}

-(void)execute{
    NSEnumerator *arr = [self.commands reverseObjectEnumerator];
    for (id<TetrisMachineCommandProtocol>command in arr) {
        [command execute];
    }
}

@end
