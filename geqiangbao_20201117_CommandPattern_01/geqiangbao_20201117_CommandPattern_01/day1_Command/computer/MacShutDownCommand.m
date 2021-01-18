//
//  MacShutDownCommand.m
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import "MacShutDownCommand.h"

@interface MacShutDownCommand ()
@property (nonatomic,strong) MacComputer *computer;
@end


@implementation MacShutDownCommand
-(instancetype)initWith:(MacComputer*)computer{
    self = [super init];
    if (self) {
        self.computer = computer;
    }
    return self;
}

-(void)execute{
    [self.computer shutDown];
}


@end
