//
//  DataCenter.h
//  test
//
//  Created by xunianqiang on 14-8-13.
//  Copyright (c) 2014年 zhancheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataCenter : NSObject

@property (nonatomic,retain)UIViewController *currentViewController;//获取当前viewController

@property (nonatomic,retain)UIWindow *bigWindow;//获取大窗口

+(id)sharedInstance;

-(UIViewController *)getViewController;

@end
