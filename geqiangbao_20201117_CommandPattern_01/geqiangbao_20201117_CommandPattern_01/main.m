//
//  main.m
//  geqiangbao_20201117_CommandPattern_01
//
//  Created by xiaobao on 2020/11/17.
//

#import <Foundation/Foundation.h>



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//
        if (1) {
            NSLog(@"---------0---------");
            MacComputer *computer = [[MacComputer alloc]init];
            MacStartUpCommand *startUpCommand = [[MacStartUpCommand alloc] initWith:computer];
            MacShutDownCommand *shutDownCommand = [[MacShutDownCommand alloc] initWith:computer];

            MacInvolker* involker = [[MacInvolker alloc] init:startUpCommand shutDown:shutDownCommand];
            [involker startUp];
            [involker shutDown];
        }
        if (1) {
            NSLog(@"---------1---------");
            MacComputer *computer = [[MacComputer alloc]init];
            MacInvolker* involker = [[MacInvolker alloc] init:computer];
            [involker startUp];
            [involker shutDown];
        }
       
        
        if(1){
            NSLog(@"---------2---------");
            TetrisMachine *tm = [[TetrisMachine alloc]init];
            DynamicCommandManager *manager = [[DynamicCommandManager alloc] init:tm];
            [manager toLeft];
            [manager toRight];
            [manager toTransform];
//            [manager undo];
            [manager undoAll];
        }
        if(1){
            NSLog(@"---------3---------");
            TetrisMachine *tm = [[TetrisMachine alloc]init];
            WrapperCommandManager*manager = [[WrapperCommandManager alloc] init:tm];
            [manager toLeft];
            [manager toRight];
            [manager toTransform];
//            [manager undo];
            [manager undoAll];
        }
        
        if(1){
            NSLog(@"---------4---------");
            TetrisMachine *tm = [[TetrisMachine alloc]init];
            GenericsCommandManager*manager = [[GenericsCommandManager alloc] init:tm];
            [manager toLeft];
            [manager toRight];
            [manager toTransform];
            NSLog(@"撤销");
            [manager undoAll];
        }
        
        if(1){
            NSLog(@"---------5---------");
            TetrisMachine *tm = [[TetrisMachine alloc]init];
            BlockCommandManager*manager = [[BlockCommandManager alloc] init:tm];
            [manager toLeft];
            [manager toRight];
            [manager toTransform];
            NSLog(@"撤销");
            [manager undoAll];
        }
        
        if(1){
            NSLog(@"---------6---------");
            id<ComputerFactoryProtocol> factory = [[AppleFactory alloc] init];
            id<ComputerProtocol> computer = [factory getComputer];
            [computer cpu];
            [computer pingmu];
            [computer zhuban];
        }
        
        
        
    }
    return 0;
    
  
}




