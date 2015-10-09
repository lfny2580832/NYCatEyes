//
//  RootTabBarViewController.m
//  NYCatEyes
//
//  Created by 牛严 on 15/10/7.
//  Copyright (c) 2015年 牛严. All rights reserved.
//

#import "RootTabBarViewController.h"
#import "MovieViewController.h"
#import "TheaterViewController.h"
#import "FoundViewController.h"
#import "MineViewController.h"

@interface RootTabBarViewController ()

@end

@implementation RootTabBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabBar.tintColor = [UIColor colorWithRed:208.0f/255 green:38.0f/255 blue:43.0f/255 alpha:1.0f];
    self.tabBar.barTintColor = [UIColor whiteColor];
    self.delegate = self;
}


#pragma mark - TabBarrController Delegate
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    if ([viewController isKindOfClass:[UINavigationController class]])
    {
        UINavigationController *naviController = (UINavigationController *)viewController;
        id vc = [naviController topViewController];
        if ([vc isKindOfClass:[MovieViewController class]]){
            
        }
        else if ([vc isKindOfClass:[TheaterViewController class]]) {
            
        }
        else if([vc isKindOfClass:[FoundViewController class]]){
            
        }
        else if([vc isKindOfClass:[MineViewController class]]){
            
        }
    }
    return YES;
}
@end
