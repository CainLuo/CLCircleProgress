//
//  CLCircleProgressLayer.m
//  CLCircleProgress
//
//  Created by Cain Luo on 2018/9/20.
//  Copyright © 2018年 Cain Luo. All rights reserved.
//

#import "CLCircleProgressLayer.h"

@implementation CLCircleProgressLayer

#pragma mark - 获取BackShapeLayer
- (CAShapeLayer *)cl_getBackShapeLayerWithView:(UIView *)view {
    
    UIColor *cl_backgroundColor = self.cl_backgroundColor ? self.cl_backgroundColor : [UIColor grayColor];

    CGPoint es_point = CGPointMake(CGRectGetWidth(view.frame) / 2, CGRectGetHeight(view.frame) / 2);
    
    UIBezierPath *cl_bezierPath = [self cl_getBezierPathWithPoint:es_point
                                                           radius:CGRectGetHeight(view.frame) / 2
                                                       startAngle:-M_PI_2
                                                         endAngle:M_PI + M_PI_2];

    CAShapeLayer *cl_backShapeLayer = [CAShapeLayer layer];
    
    cl_backShapeLayer.frame = view.frame;
    
    cl_backShapeLayer.fillColor   = [UIColor clearColor].CGColor;
    cl_backShapeLayer.lineWidth   = (self.cl_lineWidth <= 0) ? 3 : self.cl_lineWidth;
    cl_backShapeLayer.strokeColor = cl_backgroundColor.CGColor;
    cl_backShapeLayer.lineCap     = @"round";
    
    cl_backShapeLayer.path = cl_bezierPath.CGPath;
    
    return cl_backShapeLayer;
}

#pragma mark - 获取ProgressShapeLayer
- (CAShapeLayer *)cl_getProgressShapeLayerWithView:(UIView *)view {
    
    UIColor *cl_progressColor = self.cl_progressColor ? self.cl_progressColor : [UIColor greenColor];

    CGPoint es_point = CGPointMake(CGRectGetWidth(view.frame) / 2, CGRectGetHeight(view.frame) / 2);
    
    UIBezierPath *cl_bezierPath = [self cl_getBezierPathWithPoint:es_point
                                                           radius:CGRectGetHeight(view.frame) / 2
                                                       startAngle:(self.cl_startAngle <= 0) ? -M_PI_2 : self.cl_startAngle
                                                         endAngle:(self.cl_endAngle <= 0) ? -M_PI_2 : self.cl_endAngle];
    
    CAShapeLayer *cl_progressShapeLayer = [CAShapeLayer layer];
    
    cl_progressShapeLayer.frame = view.frame;
    
    cl_progressShapeLayer.fillColor   = [UIColor clearColor].CGColor;
    cl_progressShapeLayer.lineWidth   = (self.cl_lineWidth <= 0) ? 3 : self.cl_lineWidth;
    cl_progressShapeLayer.strokeColor = cl_progressColor.CGColor;
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
