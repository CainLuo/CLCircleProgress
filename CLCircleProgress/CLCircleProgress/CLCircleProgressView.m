//
//  CLCircleProgressView.m
//  CLCircleProgress
//
//  Created by Cain Luo on 2018/9/20.
//  Copyright © 2018年 Cain Luo. All rights reserved.
//

#import "CLCircleProgressView.h"

@interface CLCircleProgressView ()

@property (nonatomic, strong, readwrite) CLCircleProgressLayer *cl_circleProgressLayer;

@property (nonatomic, strong) CLCircleProgressConfiguration *cl_circleProgressConfiguration;

@end

@implementation CLCircleProgressView

- (instancetype)initCircleProgressViewWithConfiguration:(CLCircleProgressConfiguration *)configuration {
    
    self = [super init];
    
    if (self) {
     
        self.cl_circleProgressConfiguration = configuration ? configuration : [[CLCircleProgressConfiguration alloc] initConfigDefaultProperty];
    }
    
    return self;
}

- (CLCircleProgressLayer *)cl_circleProgressLayer {
    
    if (!_cl_circleProgressLayer) {
        
        _cl_circleProgressLayer = [[CLCircleProgressLayer alloc] initCircleProgressLayerWithConfiguration:self.cl_circleProgressConfiguration];
    }
    
    return _cl_circleProgressLayer;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self cl_addConstraintsWithSuperView];
}

- (void)cl_addConstraintsWithSuperView {
    
    CAShapeLayer *es_backShapeLayer     = [self.cl_circleProgressLayer cl_getBackShapeLayerWithView:self];
    CAShapeLayer *es_progressShapeLayer = [self.cl_circleProgressLayer cl_getProgressShapeLayerWithView:self];
    
    [self.layer addSublayer:es_backShapeLayer];
    [self.layer addSublayer:es_progressShapeLayer];
}


@end
