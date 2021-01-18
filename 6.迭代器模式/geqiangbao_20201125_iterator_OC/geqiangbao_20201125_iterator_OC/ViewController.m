//
//  ViewController.m
//  geqiangbao_20201125_iterator_OC
//
//  Created by xiaobao on 2020/11/25.
//

#import "ViewController.h"
#import "ArrayIterator.h"
#import "SetIterator.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self demo3];

    // Do any additional setup after loading the view.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [self demo3];
}

// 系统迭代器
-(void)demo3{
//    正序迭代器
    NSArray *arr = @[@"1",@"2",@"33",@"444"];
    NSEnumerator<NSString*> *iterator = [arr objectEnumerator];
    NSString *str = @"";
    while ((str = iterator.nextObject)) {
        NSLog(@"======== %@",str);
    }
//    逆序迭代器
    NSEnumerator<NSString*> *iterator2 = [arr reverseObjectEnumerator];
    while ((str = iterator2.nextObject)) {
        NSLog(@"--------- %@",str);
    }
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:@"xiaoming" forKey:@"name"];
    [dict setObject:@"12" forKey:@"age"];
    NSEnumerator<id> *iterator3 = [dict.allKeys objectEnumerator];
    id result = NULL;
    while ((result = iterator3.nextObject)) {
        NSLog(@"%@",result);
    }
    NSEnumerator<id> *iterator4 = [dict.allValues objectEnumerator];
    while ((result = iterator4.nextObject)) {
        NSLog(@"%@",result);
    }
}


-(void)demo2{
    NSArray *arr = @[@"1",@"2",@"33",@"444"];
    NSSet *set = [NSSet setWithArray:arr];
    id<IteratorProtocol> iterator = [[SetIterator alloc]initWith:set];
    while (iterator.hasNext) {
        NSLog(@"%@",iterator.next);
    }
    [arr objectEnumerator];
}


/// 自定义迭代器
-(void)demo1{
    NSArray *arr = @[@"1",@"22",@"345"];
    id<IteratorProtocol> iterator = [[ArrayIterator alloc] initWith:arr];
    while (iterator.hasNext) {
        NSLog(@"%@",iterator.next);
    }
    
}


@end
