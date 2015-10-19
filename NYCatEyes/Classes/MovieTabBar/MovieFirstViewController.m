//
//  FirstViewController.m
//  MaoYan
//
//  Created by 湛家荣 on 15/8/29.
//  Copyright (c) 2015年 湛家荣. All rights reserved.
//

#import "MovieFirstViewController.h"
#import "AESCrypt.h"

@interface MovieFirstViewController ()

@end

@implementation MovieFirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self testAesCrpt];
}

- (void)testAesCrpt{
    NSString *name = @"牛严";
    name = [AESCrypt encrypt:name password:@"shit"];
    NSLog(@"加密后：%@",name);
    name = [AESCrypt decrypt:name password:@"shit"];
    NSLog(@"解密后: %@",name);
}

@end
