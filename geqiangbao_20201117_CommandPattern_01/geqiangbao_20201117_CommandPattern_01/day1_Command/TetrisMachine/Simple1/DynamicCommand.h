//
//  DynamicCommand.h
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import <Foundation/Foundation.h>
#import "TetrisMachine.h"
#import "TetrisMachineCommandProtocol.h"
NS_ASSUME_NONNULL_BEGIN
typedef void(^DynamicBlock)(TetrisMachine *tm);
/// 动态命令
@interface DynamicCommand : NSObject<TetrisMachineCommandProtocol>


-(instancetype)init:(DynamicBlock)block tm:(TetrisMachine*)tm;


@end

NS_ASSUME_NONNULL_END
