//
//  RootTabBarViewController.m
//  NYCatEyes
//
//  Created by 牛严 on 15/10/7.
//  Copyright (c) 2015年 牛严. All rights reserved.
//

#import "RootTabBarViewController.h"
#import "CustomeViewController.h"
#import "MovieFirstViewController.h"
#import "MovieSecondViewController.h"
#import "MovieThirdViewController.h"
#import "TheaterViewController.h"
#import "MineViewController.h"
#import "LocationViewController.h"
#import "NYSegmentViewController.h"
#import "FoundFirstViewController.h"
#import "FoundSecondViewController.h"

@interface RootTabBarViewController ()
@property (strong, nonatomic) CustomeViewController *locationNavController;
@property (strong, nonatomic) NYSegmentViewController *movieController;
@property (strong, nonatomic) NYSegmentViewController *foundController;
@end

@implementation RootTabBarViewController
@synthesize locationNavController;

- (CustomeViewController *)locationNavController {
    if (nil == locationNavController) {
        LocationViewController *locationViewController = [[LocationViewController alloc]initWithNibName:@"LocationViewController" bundle:nil];
        locationNavController = [[CustomeViewController alloc]initWithRootViewController:locationViewController];
    } else {
        [locationNavController popToRootViewControllerAnimated:YES];
    }
    return locationNavController;
}

- (NYSegmentViewController *)movieController{
    if (nil == _movieController) {
        _movieController = [[NYSegmentViewController alloc]init];
        [_movieController setLeftNaviItemWithTitle:@"苏州 >" size:12 imageName:nil];
        [_movieController setRightNaviItemWithTitle:nil imageName:@"btn_search.png"];
        MovieFirstViewController *firstVC = [[MovieFirstViewController alloc] init];
        MovieSecondViewController *secondVC = [[MovieSecondViewController alloc] init];
        MovieThirdViewController *thirdVC = [[MovieThirdViewController alloc] init];
        [_movieController setViewControllerArray:@[firstVC, secondVC, thirdVC]];
        [_movieController setTitleArray:@[@"热映", @"待映", @"影库"]];
        _movieController.tabBarItem.title = @"电影";
        _movieController.tabBarItem.image = [UIImage imageNamed:@"icon_movie"];
    }
    return _movieController;
}

- (NYSegmentViewController *)foundController{
    if (nil == _foundController) {
        _foundController = [[NYSegmentViewController alloc]init];
        FoundFirstViewController *foundFirstVC = [[FoundFirstViewController alloc]initWithNibName:@"FoundFirstViewController" bundle:nil];
        FoundSecondViewController *foundSecVC = [[FoundSecondViewController alloc]initWithNibName:@"FoundSecondViewController" bundle:nil];
        [_foundController setViewControllerArray:@[foundFirstVC,foundSecVC]];
        [_foundController setTitleArray:@[@"推荐",@"社区"]];
        _foundController.itemWidth = 60;
        _foundController.tabBarItem.title = @"发现";
        _foundController.tabBarItem.image = [UIImage imageNamed:@"icon_found"];

    }
    return _foundController;
}
- (void)loadSubViewControllers{
  
    TheaterViewController *theaterViewController = [[TheaterViewController alloc]initWithNibName:@"TheaterViewController" bundle:nil];
    theaterViewController.tabBarItem.title = @"影院";
    theaterViewController.tabBarItem.image = [UIImage imageNamed:@"icon_theater"];
    
    
    MineViewController *mineViewController = [[MineViewController alloc]initWithNibName:@"MineViewController" bundle:nil];
    mineViewController.tabBarItem.title = @"我的";
    mineViewController.tabBarItem.image = [UIImage imageNamed:@"icon_mine"];
    
    //懒加载需要用点方法实现取方法
    UINavigationController *vc1 = [[UINavigationController alloc]initWithRootViewController:self.movieController];
    UINavigationController *vc2 = [[UINavigationController alloc]initWithRootViewController:theaterViewController];
    UINavigationController *vc3 = [[UINavigationController alloc]initWithRootViewController:self.foundController];
    UINavigationController *vc4 = [[UINavigationController alloc]initWithRootViewController:mineViewController];
    
    self.viewControllers = @[vc1,vc2,vc3,vc4];
}

#pragma mark - Notification Methods
- (void)showLocationViewWithNotification:(NSNotification *)notification
{
    if(self.presentedViewController)
        [self dismissViewControllerAnimated:NO completion:nil];
    [self presentViewController:self.locationNavController animated:YES completion:nil];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self loadSubViewControllers];
    self.tabBar.tintColor = [UIColor colorWithRed:208.0f/255 green:38.0f/255 blue:43.0f/255 alpha:1.0f];
    self.tabBar.barTintColor = [UIColor whiteColor];
    self.delegate = self;
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(showLocationViewWithNotification:) name:@"PresentLocationViewController" object:nil];
}

#pragma mark - TabBarrController Delegate
- (BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController
{
    if ([viewController isKindOfClass:[UINavigationController class]])
    {
        UINavigationController *naviController = (UINavigationController *)viewController;
        id vc = [naviController topViewController];

        if ([vc isKindOfClass:[TheaterViewController class]]) {
            
        }
        else if([vc isKindOfClass:[MineViewController class]]){
            
        }
    }
    return YES;
}

@end
