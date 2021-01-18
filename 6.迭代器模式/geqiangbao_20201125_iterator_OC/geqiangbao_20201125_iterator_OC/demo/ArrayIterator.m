//
//  ArrayIterator.m
//  geqiangbao_20201125_iterator_OC
//
//  Created by xiaobao on 2020/11/25.
//

#import "ArrayIterator.h"

@implementation ArrayIterator

- (id)next{
    if ([self hasNext]) {
       id result = self.datas[self.index++];
        return result;
    }
    return nil;
   
}

- (BOOL)hasNext{
//    self.datas.count
//    return YES;
    return self.index < self.datas.count;
}



@end
