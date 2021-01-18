//
//  MacComputerCommandProtocol.h
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#ifndef MacComputerCommandProtocol_h
#define MacComputerCommandProtocol_h

// 命令接口
@protocol MacComputerCommandProtocol <NSObject>

-(void)execute;

@end

#endif /* MacComputerCommandProtocol_h */
