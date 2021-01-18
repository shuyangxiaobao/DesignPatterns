//
//  AnyIterator.h
//  geqiangbao_20201125_iterator_OC
//
//  Created by xiaobao on 2020/11/25.
//

#import <Foundation/Foundation.h>
#import "IteratorProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface AnyIterator<T> : NSObject<IteratorProtocol>
@property (nonatomic,strong) T datas;
@property(nonatomic,assign) NSInteger index;
-(instancetype)initWith:(T)datas;
@end

NS_ASSUME_NONNULL_END
