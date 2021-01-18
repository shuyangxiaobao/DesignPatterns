//
//  GenericsCommandManager.m
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import "GenericsCommandManager.h"

@interface GenericsCommandManager ()
@property (nonatomic,strong) TetrisMachine *tm;
@property (nonatomic,strong) NSMutableArray *commands;
@end

@implementation GenericsCommandManager

-(instancetype)init:(TetrisMachine *)tm{
    self = [super init];
    if (self) {
        self.tm = tm;
        self.commands =[ NSMutableArray array];
    }
    return self;
}

-(void)toLeft{
    [self.tm toLeft];
    [self.commands addObject: [GenericsCommand createCommand:self.tm commandBlock:^(TetrisMachine* tm ) {
        [tm toLeft];
    }]];
}
-(void)toRight{
    [self.tm toRight];
    [self.commands addObject: [GenericsCommand createCommand:self.tm commandBlock:^(TetrisMachine* tm ) {
        [tm toRight];
    }]];
}
-(void)toTransform{
    [self.tm toTransform];
    [self.commands addObject: [GenericsCommand createCommand:self.tm commandBlock:^(TetrisMachine* tm ) {
        [tm toTransform];
    }]];
}
-(void)undo{
    [[self.commands lastObject] execute];
}
-(void)undoAll{
    WrapperCommand* command = [[WrapperCommand alloc] init:self.commands];
    [command execute];
    [self.commands removeAllObjects];
}


@end
