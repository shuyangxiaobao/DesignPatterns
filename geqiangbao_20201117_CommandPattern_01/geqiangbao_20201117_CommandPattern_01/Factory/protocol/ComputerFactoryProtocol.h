//
//  ComputerFactoryProtocol.h
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/19.
//

@protocol ComputerFactoryProtocol <NSObject>

-(id<ComputerProtocol>)getComputer;

@end
