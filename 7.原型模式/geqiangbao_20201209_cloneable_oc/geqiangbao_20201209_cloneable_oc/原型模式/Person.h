//
//  Person.h
//  geqiangbao_20201209_cloneable_oc
//
//  Created by xiaobao on 2020/12/9.
//

#import <Foundation/Foundation.h>
#import "CloneableProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject<CloneableProtocol>
@property(nonatomic,copy)NSString * name;  //!< <#name#>
@property(nonatomic,copy)NSString * age;  //!< <#name#>


@end

NS_ASSUME_NONNULL_END
