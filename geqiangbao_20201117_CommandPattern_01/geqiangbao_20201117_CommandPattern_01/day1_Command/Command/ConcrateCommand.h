//
//  ConcrateCommand.h
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import <Foundation/Foundation.h>

#import "CommandProtocol.h"
NS_ASSUME_NONNULL_BEGIN


/// 具体命令
@interface ConcrateCommand : NSObject<CommandProtocol>

@end

NS_ASSUME_NONNULL_END
