//
//  TestViewController.m
//  UUChartView
//
//  Created by teddy on 15/5/21.
//  Copyright (c) 2015年 uyiuyao. All rights reserved.
//

#import "TestViewController.h"

@interface TestViewController ()
{
    UUChart *chartView;
    
    NSArray *xLabels; //横坐标
    NSArray *yValues;//纵坐标的值
}

@end

@implementation TestViewController

- (void)viewWillAppear:(BOOL)animated{
//    [super viewWillAppear:animated];
//    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
//        [[UIDevice currentDevice] performSelector:@selector(setOrientation:)
//                                       withObject:(id)UIDeviceOrientationLandscapeRight];
//    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    /*
    UIInterfaceOrientation orientation = [UIApplication sharedApplication].statusBarOrientation;
    switch (orientation) {
        case UIDeviceOrientationPortrait:
            NSLog(@"home键在下面");
            break;
        case UIDeviceOrientationPortraitUpsideDown:
            NSLog(@"home键在上面");
            break;
        case UIDeviceOrientationLandscapeLeft:
            NSLog(@"home键在左边");
            break;
        case UIDeviceOrientationLandscapeRight:
            NSLog(@"home 键在右边");
            break;
            
        default:
            break;
    }
     */
    
    //强制横屏
//    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
//        [[UIDevice currentDevice] performSelector:@selector(setOrientation:)
//                                       withObject:(id)UIDeviceOrientationLandscapeRight];
//    }

    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(50, 300, 100, 50);
    btn.backgroundColor = [UIColor redColor];
    btn.layer.borderWidth = 1.0;
    btn.layer.borderColor = [UIColor greenColor].CGColor;
    [btn setTitle:@"刷新" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickMe:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
   // [self strokeChart];
   
}


int count = 0;
- (void)clickMe:(id)sender
{
    if (count == 0) {
        xLabels = @[@"09",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18"];
        yValues = @[@"0.5",@"0.0",@"0.0",@"31",@"14.5",@"4.0",@"3.0",@"0.0",@"0.0",@"0.0"];
        count = 1;
    }else{
        xLabels = @[@"09",@"10",@"11",@"12",@"13",@"14",@"15",@"16",@"17",@"18",@"19",@"20"];
        yValues = @[@"11",@"3",@"0.0",@"28",@"14.5",@"4.0",@"3.0",@"4",@"9",@"0.0",@"7.5",@"8"];
        count = 0;
    }
    
    [self strokeChart];
}


- (void)strokeChart
{
    if (chartView) {
        //存在则移除
        [chartView removeFromSuperview];
    }
    chartView = [[UUChart alloc] initwithUUChartDataFrame:(CGRect){10,60,self.view.frame.size.width - 10,150} withSource:self withStyle:UUChartLineStyle];
    [chartView showInView:self.view];
}


//横坐标标题数组
- (NSArray *)UUChart_xLableArray:(UUChart *)chart
{
    return xLabels;
}

//数值多重数组
- (NSArray *)UUChart_yValueArray:(UUChart *)chart
{
    return @[yValues];
}

#pragma mark 折线图专享功能
//判断显示横线条
- (BOOL)UUChart:(UUChart *)chart ShowHorizonLineAtIndex:(NSInteger)index
{
        if (index == 4) {
            return YES;
        }else{
            return NO;
        }
    //return YES;
}

//判断显示竖线条
- (BOOL)UUChart:(UUChart *)chart ShowVericationLineAtIndex:(NSInteger)index
{
    if (index == 0) {
        return YES;
    }else{
        return NO;
    }
}

- (CGRange)UUChartMarkRangeInLineChart:(UUChart *)chart
{
    
    return CGRangeMake(100, 0);
}

@end
