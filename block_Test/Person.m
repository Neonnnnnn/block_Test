//
//  Person.m
//  block_Test
//
//  Created by Neo on 2017/9/20.
//  Copyright © 2017年 Nuoyuan. All rights reserved.
//

#import "Person.h"


@implementation Person

- (void)test
{
    NSObject *obj = [[NSObject alloc] init];

    void (^block)() = ^{
        obj;
    };
}

@end
