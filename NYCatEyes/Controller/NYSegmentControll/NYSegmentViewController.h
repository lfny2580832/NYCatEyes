//
//  NYSegmentViewController.h
//  NYCatEyes
//
//  Created by 牛严 on 15/10/7.
//  Copyright (c) 2015年 牛严. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NYSegmentControll.h"
#import "BaseViewController.h"

@interface NYSegmentViewController : BaseViewController

@property (nonatomic, copy) NSArray *viewControllerArray;
@property (nonatomic, copy) NSArray *titleArray;

/** 指示视图的颜色 */
@property (nonatomic, strong) UIColor *indicatorViewColor;
/** segment的背景颜色 */
@property (nonatomic, strong) UIColor *segmentBgColor;
/** segment每一项的宽 */
@property (nonatomic, assign) CGFloat itemWidth;
/** segment每一项的高 */
@property (nonatomic, assign) CGFloat itemHeight;
@end



