//
//  AppDelegate.m
//  NYCatEyes
//
//  Created by 牛严 on 15/10/7.
//  Copyright (c) 2015年 牛严. All rights reserved.
//

#import "AppDelegate.h"
#import "CustomeViewController.h"
#import "MovieFirstViewController.h"
#import "MovieSecondViewController.h"
#import "MovieThirdViewController.h"
#import "TheaterViewController.h"
#import "FoundViewController.h"
#import "MineViewController.h"
#import "LocationViewController.h"
#import "NYSegmentViewController.h"

@interface AppDelegate ()
@end

@implementation AppDelegate
@synthesize rootTabBarViewController;

- (void)loadSubViewControllers{
    NYSegmentViewController *movieController = [[NYSegmentViewController alloc]init];
    [movieController setLeftNaviItemWithTitle:@"苏州 >" size:12 imageName:nil];
    [movieController setRightNaviItemWithTitle:nil imageName:@"btn_search.png"];
    MovieFirstViewController *firstVC = [[MovieFirstViewController alloc] init];
    MovieSecondViewController *secondVC = [[MovieSecondViewController alloc] init];
    MovieThirdViewController *thirdVC = [[MovieThirdViewController alloc] init];
    [movieController setViewControllerArray:@[firstVC, secondVC, thirdVC]];
    [movieController setTitleArray:@[@"热映", @"待映", @"影库"]];
    movieController.tabBarItem.title = @"电影";
    movieController.tabBarItem.image = [UIImage imageNamed:@"icon_movie"];
    
    
    TheaterViewController *theaterViewController = [[TheaterViewController alloc]initWithNibName:@"TheaterViewController" bundle:nil];
    theaterViewController.tabBarItem.title = @"影院";
    theaterViewController.tabBarItem.image = [UIImage imageNamed:@"icon_theater"];
    
    
    FoundViewController *foundViewController = [[FoundViewController alloc]initWithNibName:@"FoundViewController" bundle:nil];
    foundViewController.tabBarItem.title = @"发现";
    foundViewController.tabBarItem.image = [UIImage imageNamed:@"icon_found"];
    
    
    MineViewController *mineViewController = [[MineViewController alloc]initWithNibName:@"MineViewController" bundle:nil];
    mineViewController.tabBarItem.title = @"我的";
    mineViewController.tabBarItem.image = [UIImage imageNamed:@"icon_mine"];
    
    UINavigationController *vc1 = [[UINavigationController alloc]initWithRootViewController:movieController];
    UINavigationController *vc2 = [[UINavigationController alloc]initWithRootViewController:theaterViewController];
    UINavigationController *vc3 = [[UINavigationController alloc]initWithRootViewController:foundViewController];
    UINavigationController *vc4 = [[UINavigationController alloc]initWithRootViewController:mineViewController];
    
    self.rootTabBarViewController.viewControllers = [[NSArray alloc]initWithObjects:vc1,vc2,vc3,vc4, nil];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    rootTabBarViewController= [[RootTabBarViewController alloc]init];
    [self loadSubViewControllers];
    self.window.rootViewController = self.rootTabBarViewController;
    [self.window makeKeyAndVisible];
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:208.0f/255 green:38.0f/255 blue:43.0f/255 alpha:1.0f]];
    [[UINavigationBar appearance] setTintColor:[UIColor whiteColor]];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
