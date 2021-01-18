//
//  CommandProtocol.h
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#ifndef CommandProtocol_h
#define CommandProtocol_h

// 命令接口
@protocol CommandProtocol <NSObject>

-(void)execute;
@end

#endif /* CommandProtocol_h */
