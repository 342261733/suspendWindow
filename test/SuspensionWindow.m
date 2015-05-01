//
//  SuspensionWindow.m
//  test
//
//  Created by xunianqiang on 14-8-13.
//  Copyright (c) 2014年 zhancheng. All rights reserved.
//

#import "SuspensionWindow.h"

#import "DataCenter.h"

#define WIDTH self.frame.size.width
#define HEIGHT self.frame.size.height
#define kScreenWidth [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight [[UIScreen mainScreen] bounds].size.height

@implementation SuspensionWindow
{
    CGPoint currentPoint;//保存当前位置
    
    UIImageView *bigImage;//大圈
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
        self.windowLevel = UIWindowLevelAlert;
        [self makeKeyAndVisible];
        _imageView = [[UIImageView alloc]initWithFrame:(CGRect){0, 0,frame.size.width, frame.size.height}];
        _imageView.userInteractionEnabled = YES;
        _imageView.image = [UIImage imageNamed:name];
//        _imageView.alpha = 0.3;
        [self addSubview:_imageView];
        
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        button.frame = CGRectMake(8, 8, frame.size.width/2, frame.size.height/2);
        [button setBackgroundImage:[UIImage imageNamed:btnImageName] forState:UIControlStateNormal];
        button.tag = 300;
        [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
        [_imageView addSubview:button];
        
        UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(locationChange:)];
        pan.delaysTouchesBegan = YES;
        [self addGestureRecognizer:pan];
        
        //初始化位置
        currentPoint.x = frame.origin.x+17;
        currentPoint.y = frame.origin.y+17;
        
//        NSLog(@"初始位置 current x = %lf, y = %lf",currentPoint.x,currentPoint.y);
        
    }
    
    return self;
}


//改变位置
-(void)locationChange:(UIPanGestureRecognizer*)p
{
    //[[UIApplication sharedApplication] keyWindow]
    CGPoint panPoint = [p locationInView:[[UIApplication sharedApplication] keyWindow]];

    //获取当前位置********************
    currentPoint = panPoint;
//    NSLog(@"current x = %lf current y =  %lf",currentPoint.x,currentPoint.y);
    //*********************
    
    if(p.state == UIGestureRecognizerStateBegan)
    {
        [NSObject cancelPreviousPerformRequestsWithTarget:self selector:@selector(changeColor) object:nil];
        _imageView.alpha = 0.8;
    }
    else if (p.state == UIGestureRecognizerStateEnded)
    {
        [self performSelector:@selector(changeColor) withObject:nil afterDelay:4.0];
    }
    if(p.state == UIGestureRecognizerStateChanged)
    {
        self.center = CGPointMake(panPoint.x, panPoint.y);
//        NSLog(@" ")
    }
    else if(p.state == UIGestureRecognizerStateEnded)
    {
        /*
        
        if(panPoint.x <= kScreenWidth/2)
        {
            if(panPoint.y <= 40+HEIGHT/2 && panPoint.x >= 20+WIDTH/2)
            {
                [UIView animateWithDuration:0.2 animations:^{
                    self.center = CGPointMake(panPoint.x, HEIGHT/2);
                }];
            }
            else if(panPoint.y >= kScreenHeight-HEIGHT/2-40 && panPoint.x >= 20+WIDTH/2)
            {
                [UIView animateWithDuration:0.2 animations:^{
                    self.center = CGPointMake(panPoint.x, kScreenHeight-HEIGHT/2);
                }];
            }
            else if (panPoint.x < WIDTH/2+15 && panPoint.y > kScreenHeight-HEIGHT/2)
            {
                [UIView animateWithDuration:0.2 animations:^{
                    self.center = CGPointMake(WIDTH/2, kScreenHeight-HEIGHT/2);
                }];
            }
            else
            {
                CGFloat pointy = panPoint.y < HEIGHT/2 ? HEIGHT/2 :panPoint.y;
                [UIView animateWithDuration:0.2 animations:^{
                    self.center = CGPointMake(WIDTH/2, pointy);
                }];
            }
        }
        else if(panPoint.x > kScreenWidth/2)
        {
            if(panPoint.y <= 40+HEIGHT/2 && panPoint.x < kScreenWidth-WIDTH/2-20 )
            {
                [UIView animateWithDuration:0.2 animations:^{
                    self.center = CGPointMake(panPoint.x, HEIGHT/2);
                }];
            }
            else if(panPoint.y >= kScreenHeight-40-HEIGHT/2 && panPoint.x < kScreenWidth-WIDTH/2-20)
            {
                [UIView animateWithDuration:0.2 animations:^{
                    self.center = CGPointMake(panPoint.x, 480-HEIGHT/2);
                }];
            }
            else if (panPoint.x > kScreenWidth-WIDTH/2-15 && panPoint.y < HEIGHT/2)
            {
                [UIView animateWithDuration:0.2 animations:^{
                    self.center = CGPointMake(kScreenWidth-WIDTH/2, HEIGHT/2);
                }];
            }
            else
            {
                CGFloat pointy = panPoint.y > kScreenHeight-HEIGHT/2 ? kScreenHeight-HEIGHT/2 :panPoint.y;
                [UIView animateWithDuration:0.2 animations:^{
                    self.center = CGPointMake(320-WIDTH/2, pointy);
                }];
            }
        }
        */
    }
}

-(void)btnClick:(UIButton *)b
{
    if (b.tag == 300) {
        //显示大圈
        DataCenter *dc = [DataCenter sharedInstance];
        dc.bigWindow.frame = CGRectMake(self.frame.origin.x-33+11, self.frame.origin.y-33+12, 153/2, 153/2);
        dc.bigWindow .hidden = NO;
        _imageView.alpha = 1;
    }
}


//改变图片
-(void)changeColor
{
    [UIView animateWithDuration:2.0 animations:^{
        _imageView.alpha = 0.3;
    }];
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
