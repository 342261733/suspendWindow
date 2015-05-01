//
//  RegisterViewController.m
//  test
//
//  Created by wzs on 14-7-16.
//  Copyright (c) 2014年 zhancheng. All rights reserved.
//
#import "DataCenter.h"
#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

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
}

-(IBAction)buttonClick:(id)sender
{
//    DataCenter *dc = [DataCenter sharedInstance];
//    dc.currentViewController = dc.lastViewController;
//    dc.lastViewController = self;
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)finishClick:(id)sender
{
    NSLog(@"完成注册");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
