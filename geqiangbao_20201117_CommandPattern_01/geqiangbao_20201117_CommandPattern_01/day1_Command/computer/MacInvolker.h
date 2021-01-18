//
//  MacInvolker.h
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import <Foundation/Foundation.h>
#import "MacStartUpCommand.h"
#import "MacShutDownCommand.h"

NS_ASSUME_NONNULL_BEGIN

/// 请求者
@interface MacInvolker : NSObject


-(instancetype)init:(MacStartUpCommand *)startUpCommand shutDown:(MacShutDownCommand*)shutDownCommand;


-(instancetype)init:(MacComputer *)computer;

//开机
-(void)startUp;

//关机
-(void)shutDown;
@end

NS_ASSUME_NONNULL_END
