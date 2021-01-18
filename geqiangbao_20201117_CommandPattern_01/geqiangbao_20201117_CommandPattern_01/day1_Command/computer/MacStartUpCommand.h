//
//  MacStartUpCommand.h
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import <Foundation/Foundation.h>
#import "MacComputerCommandProtocol.h"
#import "MacComputer.h"


NS_ASSUME_NONNULL_BEGIN


/// 具体命令
@interface MacStartUpCommand : NSObject<MacComputerCommandProtocol>
-(instancetype)initWith:(MacComputer*)computer;

@end

NS_ASSUME_NONNULL_END
