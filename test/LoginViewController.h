//
//  LoginViewController.h
//  test
//
//  Created by wzs on 14-7-16.
//  Copyright (c) 2014年 zhancheng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property (nonatomic,retain) IBOutlet UIButton *loginButton;
@property (nonatomic,retain) IBOutlet UIButton *registerButton;

-(IBAction)buttonClick:(id)sender;
-(IBAction)loginClick:(id)sender;
-(IBAction)registerClick:(id)sender;

@end
