//
//  DynamicCommandManager.h
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import <Foundation/Foundation.h>
#import "TetrisMachine.h"
#import "DynamicCommand.h"


NS_ASSUME_NONNULL_BEGIN

@interface DynamicCommandManager : NSObject
-(instancetype)init:(TetrisMachine*)tm;

-(void)toLeft;
-(void)toRight;
-(void)toTransform;
-(void)undo;
-(void)undoAll;


@end

NS_ASSUME_NONNULL_END
