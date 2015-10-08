//
//  RootNavigationViewController.m
//  NYCatEyes
//
//  Created by 牛严 on 15/10/7.
//  Copyright (c) 2015年 牛严. All rights reserved.
//

#import "RootViewController.h"
#import "NYSegmentViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "ThirdViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)btnClicked:(id)sender {
    FirstViewController *firstVC = [[FirstViewController alloc] init];
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    ThirdViewController *thirdVC = [[ThirdViewController alloc] init];
    NYSegmentViewController *vc = [[NYSegmentViewController alloc] init];
    vc.segmentBgColor = [UIColor colorWithRed:207.0f/255 green:37.0f/255 blue:42.0f/255 alpha:1.0f];
    vc.indicatorViewColor = [UIColor whiteColor];
    [vc setViewControllerArray:@[firstVC, secondVC, thirdVC]];
    [vc setTitleArray:@[@"热点", @"聚焦", @"推荐"]];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
