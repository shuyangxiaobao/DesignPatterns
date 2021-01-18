//
//  WrapperCommand.h
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import <Foundation/Foundation.h>
NS_ASSUME_NONNULL_BEGIN

//复合命令
@interface WrapperCommand : NSObject<TetrisMachineCommandProtocol>

-(instancetype)init:(NSMutableArray *)commands;

@end

NS_ASSUME_NONNULL_END
