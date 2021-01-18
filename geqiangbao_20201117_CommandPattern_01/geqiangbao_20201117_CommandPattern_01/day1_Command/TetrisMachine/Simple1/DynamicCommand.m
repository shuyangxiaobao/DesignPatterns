//
//  DynamicCommand.m
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import "DynamicCommand.h"

@interface DynamicCommand ()
@property (nonatomic,copy) DynamicBlock block;
@property (nonatomic,strong) TetrisMachine* tm;

@end

@implementation DynamicCommand


-(instancetype)init:(DynamicBlock)block tm:(TetrisMachine*)tm{
    self = [super init];
    if (self) {
        self.block = block;
        self.tm = tm;
    }
    return self;
}


-(void)execute{
    self.block(self.tm);
}






@end
