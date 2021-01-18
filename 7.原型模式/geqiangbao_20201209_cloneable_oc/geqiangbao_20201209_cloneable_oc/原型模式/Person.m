//
//  Person.m
//  geqiangbao_20201209_cloneable_oc
//
//  Created by xiaobao on 2020/12/9.
//

#import "Person.h"

@implementation Person

- (id)clone{
    Person *p1 = [[Person alloc]init];
    p1.name = self.name;
    p1.age = self.age;
    return p1;
    
}

@end
