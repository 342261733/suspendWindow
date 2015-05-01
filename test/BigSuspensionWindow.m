//
//  BigSuspensionWindow.m
//  test
//
//  Created by xunianqiang on 14-8-13.
//  Copyright (c) 2014年 zhancheng. All rights reserved.
//

#import "BigSuspensionWindow.h"

#import "LoginViewController.h"

@implementation BigSuspensionWindow

+(id)sharedInstance
{
    static id dc = nil;
    if (dc == nil) {
        dc = [[[self class] alloc] init];
    }
    return dc;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

-(id)initWithFrame:(CGRect)frame imageName:(NSString*)name andButtonImageName:(NSString*)btnImageName
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        self.windowLevel =  UIWindowLevelAlert;
        [self makeKeyAndVisible];
        
        _imageView = [[UIImageView alloc]initWithFrame:(CGRect){0, 0,frame.size.width, frame.size.height}];
        _imageView.userInteractionEnabled = YES;
        _imageView.image = [UIImage imageNamed:name];
        //        _imageView.alpha = 0.3;
        [self addSubview:_imageView];
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(33/2+14, 33/2+14, 33/2, 33/2);
        [button setBackgroundImage:[UIImage imageNamed:btnImageName] forState:UIControlStateNormal];
        button.tag = 400;
        [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_imageView addSubview:button];
        
        
        UIButton *phoneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        phoneButton.frame = CGRectMake(12, 12, 30/2, 25/2);
        [phoneButton setBackgroundImage:[UIImage imageNamed:@"手机绑定.png"] forState:UIControlStateNormal];
        [phoneButton setBackgroundImage:[UIImage imageNamed:@"手机绑定1.png"] forState:UIControlStateHighlighted];
        phoneButton.tag = 310;
        [phoneButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_imageView addSubview:phoneButton];
        
        UIButton *commentButton = [UIButton buttonWithType:UIButtonTypeCustom];
        commentButton.frame = CGRectMake(50, 12, 30/2, 25/2);
        [commentButton setBackgroundImage:[UIImage imageNamed:@"反馈.png"] forState:UIControlStateNormal];
        [commentButton setBackgroundImage:[UIImage imageNamed:@"反馈1.png"] forState:UIControlStateHighlighted];
        commentButton.tag = 311;
        [commentButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_imageView addSubview:commentButton];
        
        
    }
    
    return self;
}

-(void)btnClick:(UIButton *)b
{
    if (b.tag == 400) {
//        NSLog(@"隐藏");
        self.hidden = YES;
    }
    
    if (b.tag == 310) {
        NSLog(@"手机绑定");
        
    }
    if (b.tag == 311) {
        NSLog(@"反馈");
        
        
        LoginViewController *lvc = [[LoginViewController alloc]init];
        UIViewController *vc = [[UIApplication sharedApplication] keyWindow].rootViewController ;
        NSLog(@"%@",[vc parentViewController]);
        [vc presentViewController:lvc animated:YES completion:nil];
        
        /*
         下面点击可以变色,若点击后直接跳到下一个页面不需要这个功能
         */
        /*
         static NSInteger comment_flag = 0;
         if (comment_flag == 0) {
         [b setBackgroundImage:[UIImage imageNamed:@"反馈1.png"] forState:UIControlStateNormal];
         comment_flag = 1;
         }
         else
         {
         [b setBackgroundImage:[UIImage imageNamed:@"反馈.png"] forState:UIControlStateNormal];
         comment_flag = 0;
         }
         */
    }
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
