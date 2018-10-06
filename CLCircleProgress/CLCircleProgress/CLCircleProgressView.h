//
//  CLCircleProgressView.h
//  CLCircleProgress
//
//  Created by Cain Luo on 2018/9/20.
//  Copyright © 2018年 Cain Luo. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "CLCircleProgressLayer.h"
#import "CLCircleProgressConfiguration.h"

NS_ASSUME_NONNULL_BEGIN

@interface CLCircleProgressView : UIView

@property (nonatomic, strong, readonly) CLCircleProgressLayer *cl_circleProgressLayer;

- (instancetype)initCircleProgressViewWithConfiguration:(CLCircleProgressConfiguration *)configuration;

@end

NS_ASSUME_NONNULL_END
