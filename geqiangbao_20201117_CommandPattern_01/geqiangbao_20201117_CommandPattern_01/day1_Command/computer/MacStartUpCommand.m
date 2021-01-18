//
//  MacStartUpCommand.m
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import "MacStartUpCommand.h"
@interface MacStartUpCommand ()
@property (nonatomic,strong) MacComputer *computer;
@end

@implementation MacStartUpCommand
-(instancetype)initWith:(MacComputer*)computer{
    self = [super init];
    if (self) {
        self.computer = computer;
    }
    return self;
}



-(void)execute{
    [self.computer startUp];
}

@end
