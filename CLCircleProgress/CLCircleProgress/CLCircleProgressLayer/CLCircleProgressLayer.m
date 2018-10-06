//
//  CLCircleProgressLayer.m
//  CLCircleProgress
//
//  Created by Cain Luo on 2018/9/20.
//  Copyright © 2018年 Cain Luo. All rights reserved.
//

#import "CLCircleProgressLayer.h"

@interface CLCircleProgressLayer ()

@property (nonatomic, weak) CLCircleProgressConfiguration *cl_circleProgressConfiguration;

@end

@implementation CLCircleProgressLayer

- (instancetype)initCircleProgressLayerWithConfiguration:(CLCircleProgressConfiguration *)configuration {
    
    self = [super init];
    
    if (self) {
        
        self.cl_circleProgressConfiguration = configuration ? configuration : [[CLCircleProgressConfiguration alloc] initConfigDefaultProperty];
    }
    
    return self;
}

#pragma mark - 获取BackShapeLayer
- (CAShapeLayer *)cl_getBackShapeLayerWithView:(UIView *)view {
    
    CGPoint cl_point = CGPointMake(CGRectGetWidth(view.frame) / 2,
                                   CGRectGetHeight(view.frame) / 2);

    UIBezierPath *cl_bezierPath = [self cl_getBezierPathWithPoint:cl_point
                                                           radius:CGRectGetHeight(view.frame) / 2
                                                       startAngle:-M_PI_2
                                                         endAngle:M_PI + M_PI_2];

    CAShapeLayer *cl_backShapeLayer = [CAShapeLayer layer];
    
    cl_backShapeLayer.frame = view.bounds;
    
    cl_backShapeLayer.fillColor   = [UIColor clearColor].CGColor;
    cl_backShapeLayer.lineWidth   = self.cl_circleProgressConfiguration.cl_lineWidth;
    cl_backShapeLayer.strokeColor = self.cl_circleProgressConfiguration.cl_backgroundColor.CGColor;
    cl_backShapeLayer.lineCap     = @"round";
    
    cl_backShapeLayer.path = cl_bezierPath.CGPath;
    
    return cl_backShapeLayer;
}

#pragma mark - 获取ProgressShapeLayer
- (CAShapeLayer *)cl_getProgressShapeLayerWithView:(UIView *)view {
    
    CGPoint cl_point = CGPointMake(CGRectGetWidth(view.frame) / 2,
                                   -(CGRectGetHeight(view.frame) / 2));
    
    UIBezierPath *cl_bezierPath = [self cl_getBezierPathWithPoint:cl_point
                                                           radius:CGRectGetHeight(view.frame) / 2
                                                       startAngle:self.cl_circleProgressConfiguration.cl_startAngle
                                                         endAngle:self.cl_circleProgressConfiguration.cl_endAngle];
    
    CAShapeLayer *cl_progressShapeLayer = [CAShapeLayer layer];
    
    cl_progressShapeLayer.frame = view.bounds;
    
    cl_progressShapeLayer.fillColor   = [UIColor clearColor].CGColor;
    cl_progressShapeLayer.lineWidth   = self.cl_circleProgressConfiguration.cl_lineWidth;
    cl_progressShapeLayer.strokeColor = self.cl_circleProgressConfiguration.cl_progressColor.CGColor;
    cl_progressShapeLayer.lineCap     = @"round";
    
    cl_progressShapeLayer.path = cl_bezierPath.CGPath;
    
    return cl_progressShapeLayer;
}

#pragma mark - 获取UIBezierPath
- (UIBezierPath *)cl_getBezierPathWithPoint:(CGPoint)point
                                     radius:(CGFloat)radius
                                 startAngle:(CGFloat)startAngle
                                   endAngle:(CGFloat)endAngle {
    
    return [UIBezierPath bezierPathWithArcCenter:point
                                          radius:radius
                                      startAngle:startAngle
                                        endAngle:endAngle
                                       clockwise:YES];
}

@end
