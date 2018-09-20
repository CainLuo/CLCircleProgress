//
//  CLCircleProgressConfiguration.m
//  CLCircleProgress
//
//  Created by Cain Luo on 2018/9/20.
//  Copyright © 2018年 Cain Luo. All rights reserved.
//

#import "CLCircleProgressConfiguration.h"

@implementation CLCircleProgressConfiguration

- (instancetype)init {
    
    self = [super init];
    
    if (self) {
        
    }
    
    return self;
}

- (void)es_configDefaultProperty {
    
    _cl_progress        = 0;
    _cl_endAngle        = -M_PI_2;
    _cl_lineWidth       = 3;
    _cl_startAngle      = -M_PI_2;
    _cl_progressColor   = [UIColor greenColor];
    _cl_backgroundColor = [UIColor grayColor];
}


@end
