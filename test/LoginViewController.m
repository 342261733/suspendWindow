//
//  LoginViewController.m
//  test
//
//  Created by wzs on 14-7-16.
//  Copyright (c) 2014年 zhancheng. All rights reserved.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"

#import "ViewController.h"

#import "DataCenter.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
//    [_loginButton setBackgroundImage:[UIImage imageNamed:@"ebpay_login_btn_normal.9.png"] forState:UIControlStateNormal];
//    
//    [_loginButton setBackgroundImage:[UIImage imageNamed:@"ebpay_login_btn_press.9.png"] forState:UIControlStateHighlighted];
    
    
    
        
}

-(IBAction)buttonClick:(id)sender
{


//    DataCenter *dc = [DataCenter sharedInstance];
//    dc.currentViewController = dc.lastViewController;
//    dc.lastViewController = self;
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)loginClick:(id)sender
{
    NSLog(@"登录");
}
-(IBAction)registerClick:(id)sender
{
    RegisterViewController *rvc = [[RegisterViewController alloc]init];
//    DataCenter *dc = [DataCenter sharedInstance];
//    dc.lastViewController = self;
//    dc.currentViewController = rvc;
    
    [self presentViewController:rvc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
