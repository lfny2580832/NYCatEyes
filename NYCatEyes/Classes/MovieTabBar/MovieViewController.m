//
//  RootNavigationViewController.m
//  NYCatEyes
//
//  Created by 牛严 on 15/10/7.
//  Copyright (c) 2015年 牛严. All rights reserved.
//

#import "MovieViewController.h"
#import "NYSegmentViewController.h"
#import "MovieFirstViewController.h"
#import "MovieSecondViewController.h"
#import "MovieThirdViewController.h"

@interface MovieViewController ()

@end

@implementation MovieViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    MovieFirstViewController *firstVC = [[MovieFirstViewController alloc] init];
    MovieSecondViewController *secondVC = [[MovieSecondViewController alloc] init];
    MovieThirdViewController *thirdVC = [[MovieThirdViewController alloc] init];
    NYSegmentViewController *vc = [[NYSegmentViewController alloc] init];
    vc.segmentBgColor = [UIColor colorWithRed:207.0f/255 green:37.0f/255 blue:42.0f/255 alpha:1.0f];
    vc.indicatorViewColor = [UIColor whiteColor];
    [vc setLeftNaviItemWithTitle:@"苏州 >" size:12 imageName:nil];
    [vc setRightNaviItemWithTitle:nil imageName:@"btn_search.png"];
    [vc setViewControllerArray:@[firstVC, secondVC, thirdVC]];
    [vc setTitleArray:@[@"热映", @"待映", @"影库"]];
    [self.navigationController pushViewController:vc animated:NO];
}


@end
