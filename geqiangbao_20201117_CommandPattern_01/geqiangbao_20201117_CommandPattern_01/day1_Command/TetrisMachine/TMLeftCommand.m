//
//  TMLeftCommand.m
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import "TMLeftCommand.h"

@interface TMLeftCommand ()
@property (nonatomic,strong) TetrisMachine *tm;
@end

@implementation TMLeftCommand

-(instancetype)init:(TetrisMachine*)tm{
    self = [super init];
    if (self) {
        self.tm = tm;
    }
    return self;
}

-(void)execute{
    [self.tm toLeft];
}

@end
