//
//  GenericsCommand.h
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN



//使用范型 实现万能命令

@interface GenericsCommand<T> : NSObject<TetrisMachineCommandProtocol>
typedef void(^CommandBlock)(T);

-(instancetype)init:(T)receiver commandBlock:(CommandBlock)block;

+(instancetype)createCommand:(T)receiver commandBlock:(CommandBlock)block;

@end

NS_ASSUME_NONNULL_END
