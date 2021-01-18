//
//  TetrisMachineCommandProtocol.h
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#ifndef TetrisMachineCommandProtocol_h
#define TetrisMachineCommandProtocol_h
//命令接口
@protocol TetrisMachineCommandProtocol <NSObject>

-(void)execute;

@end

#endif /* TetrisMachineCommandProtocol_h */
