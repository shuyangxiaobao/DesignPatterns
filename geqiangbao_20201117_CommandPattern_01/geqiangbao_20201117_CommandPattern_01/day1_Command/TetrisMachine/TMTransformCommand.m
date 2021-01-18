//
//  TMTransformCommand.m
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import "TMTransformCommand.h"

@interface TMTransformCommand ()
@property (nonatomic,strong) TetrisMachine *tm;
@end

@implementation TMTransformCommand

-(instancetype)init:(TetrisMachine*)tm{
    self = [super init];
    if (self) {
        self.tm = tm;
    }
    return self;
}

-(void)execute{
    [self.tm toTransform];
}

@end
