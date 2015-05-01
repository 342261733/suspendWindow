//
//  DataCenter.m
//  test
//
//  Created by xunianqiang on 14-8-13.
//  Copyright (c) 2014年 zhancheng. All rights reserved.
//

#import "DataCenter.h"

@implementation DataCenter

+(id)sharedInstance
{
    static id dc = nil;
    if (dc == nil) {
        dc = [[[self class] alloc]init];
    }
    return dc;
}

-(UIViewController *)getViewController
{
    if (self.currentViewController) {
        return self.currentViewController;
    }
    
    return nil;
}

@end
