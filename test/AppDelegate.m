//
//  AppDelegate.m
//  test
//
//  Created by wzs on 14-7-16.
//  Copyright (c) 2014年 zhancheng. All rights reserved.
//

#import "AppDelegate.h"

#import "ViewController.h"

#import "DataCenter.h"


@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    susWindow = [[SuspensionWindow alloc]initWithFrame:CGRectMake(200, 200, 33, 33) imageName:@"小圈.png" andButtonImageName:@"正常.png"];

    //判断当前页面是不是横屏,若横屏需要旋转,若竖屏不需要
    susWindow.transform = CGAffineTransformMakeRotation(-M_PI/2);//横屏需要旋转角度
    susWindow.hidden = NO;
    
    
    bigSusWindow = [[BigSuspensionWindow alloc]initWithFrame:CGRectMake(100-33/2-5, 200-33/2-5, 153/2, 153/2) imageName:@"大圈.png" andButtonImageName:@"选中.png"];
    bigSusWindow.transform = CGAffineTransformMakeRotation(-M_PI/2);
    bigSusWindow.hidden = YES;
    
    DataCenter *dc = [DataCenter sharedInstance];
    dc.bigWindow = bigSusWindow;
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
