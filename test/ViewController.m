//
//  ViewController.m
//  test
//
//  Created by wzs on 14-7-16.
//  Copyright (c) 2014年 zhancheng. All rights reserved.
//

#import "ViewController.h"
#import "LoginViewController.h"
#import "suspensionWindow.h"


#import "DataCenter.h"

@interface ViewController ()

@end

@implementation ViewController
{
    UIImageView *icon;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.    


    //获取当前窗口
    DataCenter *dc = [DataCenter sharedInstance];
    dc.currentViewController = self;
    
    self.view.backgroundColor = [UIColor whiteColor];
   
    /*
    
    //悬浮窗
    icon = [[UIImageView alloc] init];
    icon.userInteractionEnabled = YES;
    icon.frame = CGRectMake(100, 100, 221/2, 83/2);
    icon.image = [UIImage imageNamed:@"dk_suspension_window_bg_left.png"];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapChange:)];
    [icon addGestureRecognizer:tap];
    
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panChange:)];
    [icon addGestureRecognizer:pan];
    
    [self.view addSubview:icon];
    
    //添加意见，账号
    UIButton *comment = [[UIButton alloc]init];
    [comment setBackgroundImage:[UIImage imageNamed:@"dk_icon_prefecture_normal.png"] forState:UIControlStateNormal];
    comment.frame = CGRectMake(icon.frame.size.width/4+15, 5, 20, 30);
    comment.tag = 100;
    [comment addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [icon addSubview:comment];
    
    UIButton *loginButton = [[UIButton alloc]init];
    [loginButton setBackgroundImage:[UIImage imageNamed:@"dk_icon_user_account_normal.png"] forState:UIControlStateNormal];
    loginButton.frame = CGRectMake(icon.frame.size.width/4+15+30, 5, 20, 30);
    loginButton.tag = 101;
    [loginButton addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [icon addSubview:loginButton];
    
     */
    
    //测试button
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(50, 41, 300, 30)];
    [button setTitle:@"ok" forState:UIControlStateNormal];
//    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
//    buttonImage = [buttonImage stretchableImageWithLeftCapWidth:floorf(buttonImage.size.width/2) topCapHeight:floorf(buttonImage.size.height/2)];
    
    [button setBackgroundImage:[UIImage imageNamed:@"camera-button.png"]  forState:UIControlStateNormal];
    
    
    
    UIImage *bgimage = [UIImage imageNamed:@"camera-button.png"];
    bgimage = [bgimage stretchableImageWithLeftCapWidth:floorf(bgimage.size.width/2) topCapHeight:floorf(bgimage.size.height/2)];
    [button setBackgroundImage:bgimage forState:UIControlStateNormal];

    
    button.tag = 110;
    [self.view addSubview:button];

  
//    [self.view bringSubviewToFront:icon];//放在最前面的方法

}

-(void)tapChange:(UITapGestureRecognizer *)tap
{
//    icon.frame = CGRectMake(icon.frame.origin.x, icon.frame.origin.y, 30, icon.frame.size.height);
//    NSLog(@"轻击");

}

-(void)panChange:(UIPanGestureRecognizer *)pan
{
//    NSLog(@"pan");
    CGPoint location = [pan locationInView:pan.view.superview];
    pan.view.center = location;
}

-(void)btnClick:(UIButton *)b
{
    if (b.tag == 100) {
        NSLog(@"反馈意见");
    }
    if (b.tag == 101) {
        
        LoginViewController *lvc = [[LoginViewController alloc]init];
        [self presentViewController:lvc  animated:YES completion:nil];
        
    }
    if (b.tag == 110) {
        NSLog(@"ok");
        LoginViewController *lvc = [[LoginViewController alloc]init];
//        
//        DataCenter *dc = [DataCenter sharedInstance];
//        dc.lastViewController = self;
//        dc.currentViewController = lvc;
//        
        [self presentViewController:lvc  animated:YES completion:nil];
        

    }

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
