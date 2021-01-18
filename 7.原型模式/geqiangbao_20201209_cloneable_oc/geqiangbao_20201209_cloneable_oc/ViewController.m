//
//  ViewController.m
//  geqiangbao_20201209_cloneable_oc
//
//  Created by xiaobao on 2020/12/9.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self demo1];
    // Do any additional setup after loading the view.
}

-(void)demo1{
    Person* p1 = [[Person alloc]init];
    p1.name = @"xiaoming";
    p1.age = @"11";
    Person * p2 = [p1 clone];
    p1.name = @"xiongda";
    
    NSLog(@"p1.name = %@",p1.name);
    NSLog(@"p2.name = %@",p2.name);

}


@end
