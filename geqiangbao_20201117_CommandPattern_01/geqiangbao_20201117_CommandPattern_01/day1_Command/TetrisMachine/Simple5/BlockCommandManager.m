//
//  BlockCommandManager.m
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import "BlockCommandManager.h"

typedef void(^BlockCommand)(TetrisMachine *tm);

@interface BlockCommandManager ()
@property (nonatomic,strong) TetrisMachine *tm;
@property (nonatomic,strong) NSMutableArray *commands;
@property (nonatomic,strong) dispatch_queue_t queue;
@end

@implementation BlockCommandManager

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
        [self.commands addObject:^(TetrisMachine *tm){
            NSLog(@"撤销向左");
        }];
    });
}
-(void)toRight{
    [self.tm toRight];
    dispatch_sync(self.queue, ^{
        [self.commands addObject:^(TetrisMachine *tm){
            NSLog(@"撤销向右");
        }];
    });
}
-(void)toTransform{
    [self.tm toTransform];
    dispatch_sync(self.queue, ^{
        [self.commands addObject:^(TetrisMachine *tm){
            NSLog(@"撤销变形");
        }];
    });
}
-(void)undo{
    BlockCommand block =  [self.commands lastObject];
    block(self.tm);
}

-(void)undoAll{
    NSEnumerator* arr = [self.commands reverseObjectEnumerator];
    for (BlockCommand block in arr) {
        block(self.tm);
    }
    [self.commands removeAllObjects];
}


@end


