//
//  TetrisMachine.h
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//接收者
@interface TetrisMachine : NSObject
-(void)toLeft;
-(void)toRight;
-(void)toTransform;
@end

NS_ASSUME_NONNULL_END
