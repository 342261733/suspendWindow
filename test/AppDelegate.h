//
//  AppDelegate.h
//  test
//
//  Created by wzs on 14-7-16.
//  Copyright (c) 2014年 zhancheng. All rights reserved.
//

#import <UIKit/UIKit.h>

//#import "Suspension.h"

#import "SuspensionWindow.h"

#import "BigSuspensionWindow.h"

@class ViewController;

@interface AppDelegate : UIResponder <UIApplicationDelegate>
{
//    Suspension *myWindow;
    
    SuspensionWindow *susWindow;
    
    BigSuspensionWindow *bigSusWindow;
    
}

@property (strong, nonatomic) UIWindow *window;

@property (strong,nonatomic) ViewController *viewController;

@end
