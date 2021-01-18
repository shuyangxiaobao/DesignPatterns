//
//  BlockCommandManager.h
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BlockCommandManager : NSObject
-(instancetype)init:(TetrisMachine*)tm;


-(void)toLeft;
-(void)toRight;
-(void)toTransform;
-(void)undo;
-(void)undoAll;
@end

NS_ASSUME_NONNULL_END
