//
//  GKThirdViewController.m
//  GKNavigationController
//
//  Created by QuintGao on 2017/6/21.
//  Copyright © 2017年 高坤. All rights reserved.
//

#import "GKDemo003ViewController.h"
#import "GKNavigationController.h"

@interface GKDemo003ViewController ()

@end

@implementation GKDemo003ViewController

- (void)loadView {
    [super loadView];
    
    self.view = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"001"]];
    self.view.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.userInteractionEnabled = YES;
    self.navigationController.navigationBar.hidden = YES;
    
    self.navigationItem.title = @"控制器003";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.gk_popMaxAllowedDistanceToLeftEdge = 200;
    
    UIButton *btn = [UIButton new];
    btn.frame = CGRectMake(100, 100, 60, 20);
    btn.backgroundColor = [UIColor blackColor];
    [btn setTitle:@"Pop" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    UILabel *label = [UILabel new];
    label.text = @"我是无导航栏控制器，距离屏幕左边200像素处才能滑动返回哦！0000000";
    label.font = [UIFont systemFontOfSize:16];
    label.numberOfLines = 0;
    
    label.frame = CGRectMake(10, 200, self.view.frame.size.width - 20, 0);
    [label sizeToFit];
    label.textAlignment = NSTextAlignmentCenter;
    [self.view addSubview:label];
    
    UIView *v = [UIView new];
    v.frame = CGRectMake(200, 0, 1, self.view.frame.size.height);
    v.backgroundColor = [UIColor blackColor];
    [self.view addSubview:v];
}

- (void)btnAction {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
