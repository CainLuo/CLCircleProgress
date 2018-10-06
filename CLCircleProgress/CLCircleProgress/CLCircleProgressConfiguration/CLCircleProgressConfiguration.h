//
//  CLCircleProgressConfiguration.h
//  CLCircleProgress
//
//  Created by Cain Luo on 2018/9/20.
//  Copyright © 2018年 Cain Luo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface CLCircleProgressConfiguration : NSObject

/**
 初始化默认的数据

 @return CLCircleProgressConfiguration
 */
- (instancetype)initConfigDefaultProperty;

/**
 默认: 3
 */
@property (nonatomic, assign) CGFloat cl_lineWidth;

/**
 默认: -M_PI_2
 */
@property (nonatomic, assign) CGFloat cl_startAngle;

/**
 默认: -M_PI_2
 */
@property (nonatomic, assign) CGFloat cl_endAngle;

/**
 进度圈颜色, 默认: [UIColor greenColor]
 */
@property (nonatomic, strong) UIColor *cl_progressColor;

/**g
 进度圈底部颜色, 默认: [UIColor grayColor]
 */
@property (nonatomic, strong) UIColor *cl_backgroundColor;

/**
 进度, 最小为0, 最大为1, 默认: 0
 */
@property (nonatomic, assign) CGFloat cl_progress;

@end

NS_ASSUME_NONNULL_END
