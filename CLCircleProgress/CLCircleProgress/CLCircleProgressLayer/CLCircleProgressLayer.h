//
//  CLCircleProgressLayer.h
//  CLCircleProgress
//
//  Created by Cain Luo on 2018/9/20.
//  Copyright © 2018年 Cain Luo. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "CLCircleProgressConfiguration.h"

NS_ASSUME_NONNULL_BEGIN

@interface CLCircleProgressLayer : NSObject

/**
 初始化CLCircleProgressLayer

 @param configuration CLCircleProgressConfiguration
 @return CLCircleProgressLayer
 */
- (instancetype)initCircleProgressLayerWithConfiguration:(CLCircleProgressConfiguration *)configuration;

/**
 获取指定UIView进度圈的底图

 @param view UIView
 @return CAShapeLayer
 */
- (CAShapeLayer *)cl_getBackShapeLayerWithView:(UIView *)view;

/**
 获取指定UIViewd进度圈

 @param view UIView
 @return CAShapeLayer
 */
- (CAShapeLayer *)cl_getProgressShapeLayerWithView:(UIView *)view;

@end

NS_ASSUME_NONNULL_END
