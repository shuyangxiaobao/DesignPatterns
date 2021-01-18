//
//  ComputerProtocol.h
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/19.
//


@protocol ComputerProtocol <NSObject>

@required
-(void)cpu;
@required
-(void)pingmu;
@required
-(void)zhuban;

@end
