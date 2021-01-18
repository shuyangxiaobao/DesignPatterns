//
//  MacInvolker.m
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import "MacInvolker.h"

@interface MacInvolker ()
@property (nonatomic,strong) MacStartUpCommand * startUpCommand;
@property (nonatomic,strong) MacShutDownCommand * shutdownCommand;
@property (nonatomic,strong) MacComputer * computer;

@end

@implementation MacInvolker



-(instancetype)init:(MacStartUpCommand *)startUpCommand shutDown:(MacShutDownCommand*)shutDownCommand{
    self = [super init];
    if (self) {
        self.startUpCommand = startUpCommand;
        self.shutdownCommand = shutDownCommand;
    }
    return self;
}


-(instancetype)init:(MacComputer *)computer{
    self = [super init];
    if (self) {
        self.startUpCommand = [[MacStartUpCommand alloc]initWith:computer];
        self.shutdownCommand = [[MacShutDownCommand alloc]initWith:computer];
        self.computer = computer;
    }
    return self;
}





//开机
-(void)startUp{
    [self.startUpCommand execute];
}

//关机
-(void)shutDown{
    [self.shutdownCommand execute];

}


@end
