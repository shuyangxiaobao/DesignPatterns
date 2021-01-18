//
//  GenericsCommand.m
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import "GenericsCommand.h"

@interface GenericsCommand<T> ()
@property (nonatomic,strong) T receiver;
@property(nonatomic,copy)void(^block)(T);


@end
@implementation GenericsCommand

-(instancetype)init:(id)receiver commandBlock:(void (^)(id _Nonnull))block{
    self = [super init];
    if (self) {
        self.receiver = receiver;
        self.block = block;
    }
    return self;
}

+(instancetype)createCommand:(id)receiver commandBlock:(CommandBlock)block{
    return [[GenericsCommand alloc] init:receiver commandBlock:block];
}


- (void)execute{
    self.block(self.receiver);
}

@end
