//
//  SetIterator.m
//  geqiangbao_20201125_iterator_OC
//
//  Created by xiaobao on 2020/11/25.
//

#import "SetIterator.h"

@interface SetIterator ()
@property (nonatomic,strong) NSEnumerator<id> * iterator;
@end

@implementation SetIterator

-(instancetype)initWith:(id)datas{
    self = [super init];
    if (self) {
        self.datas = datas;
        _iterator = self.datas.objectEnumerator;
    }
    return self;
}

- (id)next{
    if ([self hasNext]) {
        self.index++;
        return self.iterator.nextObject;
    }
    return nil;
   
}

- (BOOL)hasNext{
    return self.index < self.datas.count;
}

@end
