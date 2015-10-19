//
//  NYSegmentControll.h
//  NYCatEyes
//
//  Created by 牛严 on 15/10/7.
//  Copyright (c) 2015年 牛严. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NYSegmentDelegate;

@interface NYSegmentControll : UIView
@property (nonatomic, strong) UIColor *indicatorViewColor;
@property (assign, nonatomic) id<NYSegmentDelegate> delegate;


- (instancetype)initWithFrame:(CGRect)frame titles:(NSArray *)titleArray;

/** 设置segment的索引为index的按钮处于选中状态 */
- (void)setSelectedIndex:(NSInteger)index;
@end

@protocol NYSegmentDelegate <NSObject>

/** 选中某个按钮时的代理回调 */
- (void)segmentControl:(NYSegmentControll *)segment didSelectedIndex:(NSInteger)index;

/** 指示视图滑动进度的代理回调 */
- (void)segmentControl:(NYSegmentControll *)segment didScrolledPersent:(CGFloat)persent;


@end
