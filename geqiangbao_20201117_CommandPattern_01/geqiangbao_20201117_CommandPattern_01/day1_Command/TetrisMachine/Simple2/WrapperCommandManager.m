//
//  WrapperCommandManager.m
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import "WrapperCommandManager.h"

@interface WrapperCommandManager ()
@property (nonatomic,strong) TetrisMachine* tm;
@property (nonatomic,strong) NSMutableArray *commands;

@end

@implementation WrapperCommandManager
-(instancetype)init:(TetrisMachine*)tm{
    self = [super init];
    if (self) {
        self.tm = tm;
        self.commands =[ NSMutableArray array];
    }
    return self;
}

-(void)toLeft{
    [self.tm toLeft];
    [self.commands addObject:[[DynamicCommand alloc]init:^(TetrisMachine * _Nonnull tm) {
        NSLog(@"向左撤回了");
    } tm:self.tm]];
}
-(void)toRight{
    [self.tm toRight];
    [self.commands addObject:[[DynamicCommand alloc]init:^(TetrisMachine * _Nonnull tm) {
        NSLog(@"向右撤回了");
    } tm:self.tm]];
}


-(void)toTransform{
    [self.tm toTransform];
    [self.commands addObject:[[DynamicCommand alloc]init:^(TetrisMachine * _Nonnull tm) {
        NSLog(@"变形撤回了");
    } tm:self.tm]];
}

-(void)undo{
    [self.commands.lastObject execute];
    [self.commands removeLastObject];
}
-(void)undoAll{
    
    NSEnumerator*arr = [self.commands reverseObjectEnumerator];
    for (id<TetrisMachineCommandProtocol> command in arr) {
        [command execute];
    }
    [self.commands removeAllObjects];
}


@end
