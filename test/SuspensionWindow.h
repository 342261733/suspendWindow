//
//  SuspensionWindow.h
//  test
//
//  Created by xunianqiang on 14-8-13.
//  Copyright (c) 2014年 zhancheng. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "BigSuspensionWindow.h"

@interface SuspensionWindow : UIWindow
{
    UIImageView *_imageView;
    
    BigSuspensionWindow *bw ;
}

@property (nonatomic,retain)UIViewController *currentVC;


-(id)initWithFrame:(CGRect)frame imageName:(NSString*)name andButtonImageName:(NSString*)btnImageName;


@end
