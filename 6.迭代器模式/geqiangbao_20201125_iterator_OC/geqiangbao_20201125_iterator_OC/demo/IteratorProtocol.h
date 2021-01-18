//
//  IteratorProtocol.h
//  geqiangbao_20201125_iterator_OC
//
//  Created by xiaobao on 2020/11/25.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol IteratorProtocol

-(id)next;
-(BOOL)hasNext;

@end

NS_ASSUME_NONNULL_END
