//
//  BigSuspensionWindow.h
//  test
//
//  Created by xunianqiang on 14-8-13.
//  Copyright (c) 2014年 zhancheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BigSuspensionWindow : UIWindow
{
    UIImageView *_imageView;
}

-(id)initWithFrame:(CGRect)frame imageName:(NSString*)name andButtonImageName:(NSString*)btnImageName;

+(id)sharedInstance;

@end
