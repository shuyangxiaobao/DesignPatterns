//
//  TMManager.m
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import "TMManager.h"

#import "TMLeftCommand.h"
#import "TMRightCommand.h"
#import "TMTransformCommand.h"

@interface TMManager ()

@property (nonatomic,strong) TMLeftCommand *leftCommand;
@property (nonatomic,strong) TMRightCommand *rightCommand;
@property (nonatomic,strong) TMTransformCommand *transformCommand;
@property (nonatomic,strong) TetrisMachine *tm;
@property (nonatomic,strong) NSMutableArray *commands;

@end

@implementation TMManager

-(instancetype)init:(TetrisMachine*)tm{
    self = [super init];
    if (self) {
        self.tm = tm;
        self.leftCommand = [[TMLeftCommand alloc]init:tm];
        self.rightCommand = [[TMRightCommand alloc]init:tm];
        self.transformCommand = [[TMTransformCommand alloc]init:tm];
    }
    return self;
}

-(void)toLeft{
    [self.leftCommand execute];
    [self addCommand:[[TMLeftCommand alloc] init:self.tm]];
}
-(void)toRight{
    [self.rightCommand execute];
    [self addCommand:[[TMRightCommand alloc] init:self.tm]];


}
-(void)toTransform{
    [self.transformCommand execute];
    [self addCommand:[[TMTransformCommand alloc] init:self.tm]];

}


-(void)addCommand:(id<TetrisMachineCommandProtocol>) command{
    [self.commands addObject:command];
}

//撤销操作
-(void)undo{
    id<TetrisMachineCommandProtocol>command = [self.commands lastObject];
    [command execute];
    [self.commands removeLastObject];
}

//撤销所有
-(void)undoAll{
    for (id<TetrisMachineCommandProtocol>command in self.commands) {
        [command execute];
    }
    [self.commands removeAllObjects];
}






@end
