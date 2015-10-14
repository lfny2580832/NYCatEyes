//
//  LocationViewController.m
//  NYCatEyes
//
//  Created by 牛严 on 15/10/9.
//  Copyright (c) 2015年 牛严. All rights reserved.
//

#import "LocationViewController.h"

@interface LocationViewController ()

@end

@implementation LocationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setNaviTitle:@"当前城市—苏州" size:16];
    [self setLeftNaviItemWithTitle:nil imageName:@"icon_header_pop.png"];
}

- (void)leftItemTapped{
    [self.navigationController dismissViewControllerAnimated:YES completion:nil];
}

@end
