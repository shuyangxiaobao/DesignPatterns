//
//  QueueCommandManager.m
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import "QueueCommandManager.h"

@interface QueueCommandManager ()
@property (nonatomic,strong) TetrisMachine *tm;
@property (nonatomic,strong) NSMutableArray *commands;
@property (nonatomic,strong) dispatch_queue_t queue;
@end

@implementation QueueCommandManager

-(instancetype)init:(TetrisMachine *)tm{
    self = [super init];
    if (self) {
        self.tm = tm;
        self.commands =[ NSMutableArray array];
        self.queue = dispatch_queue_create("Command", NULL);
    }
    return self;
}

-(void)toLeft{
    [self.tm toLeft];
    dispatch_sync(self.queue, ^{
        [self.commands addObject: [GenericsCommand createCommand:self.tm commandBlock:^(TetrisMachine* tm ) {
            [tm toLeft];
        }]];
    });

}
-(void)toRight{
    [self.tm toRight];
    dispatch_sync(self.queue, ^{
        [self.commands addObject: [GenericsCommand createCommand:self.tm commandBlock:^(TetrisMachine* tm ) {
            [tm toRight];
        }]];
    });
}
-(void)toTransform{
    [self.tm toTransform];
    dispatch_sync(self.queue, ^{
        [self.commands addObject: [GenericsCommand createCommand:self.tm commandBlock:^(TetrisMachine* tm ) {
            [tm toTransform];
        }]];
    });
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

