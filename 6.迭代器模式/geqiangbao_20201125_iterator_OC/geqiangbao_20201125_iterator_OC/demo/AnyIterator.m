//
//  AnyIterator.m
//  geqiangbao_20201125_iterator_OC
//
//  Created by xiaobao on 2020/11/25.
//

#import "AnyIterator.h"

@interface AnyIterator ()

@end

@implementation AnyIterator


-(instancetype)initWith:(id)datas{
    self = [super init];
    if (self) {
        self.datas = datas;
    }
    return self;
}


- (BOOL)hasNext{
    return  false;
    
}
- (id)next{
    return nil;
}

@end
