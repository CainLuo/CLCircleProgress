//
//  ViewController.m
//  CLCircleProgress
//
//  Created by Cain Luo on 2018/9/20.
//  Copyright © 2018年 Cain Luo. All rights reserved.
//

#import "ViewController.h"
#import "CLCircleProgressView.h"

@interface ViewController ()

@property (nonatomic, strong) CLCircleProgressView *cl_circleProgressView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:self.cl_circleProgressView];
}

- (CLCircleProgressView *)cl_circleProgressView {
    
    if (!_cl_circleProgressView) {
        
        _cl_circleProgressView = [[CLCircleProgressView alloc] initCircleProgressViewWithConfiguration:nil];
        
        _cl_circleProgressView.frame = CGRectMake(200, 350, 100, 100);
        _cl_circleProgressView.backgroundColor = [UIColor redColor];
    }
    
    return _cl_circleProgressView;
}


@end
