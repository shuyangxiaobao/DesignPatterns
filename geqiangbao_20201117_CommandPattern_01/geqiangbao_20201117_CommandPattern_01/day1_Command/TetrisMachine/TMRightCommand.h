//
//  TMRightCommand.h
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import <Foundation/Foundation.h>
#import "TetrisMachineCommandProtocol.h"
#import "TetrisMachine.h"
NS_ASSUME_NONNULL_BEGIN

//具体命令
@interface TMRightCommand : NSObject<TetrisMachineCommandProtocol>


-(instancetype)init:(TetrisMachine*)tm;
@end

NS_ASSUME_NONNULL_END
