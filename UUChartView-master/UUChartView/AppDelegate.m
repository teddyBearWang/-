//
//  AppDelegate.m
//  UUChartView
//
//  Created by shake on 15/1/4.
//  Copyright (c) 2015年 uyiuyao. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"
#import "TestViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    self.window = [[UIWindow alloc]initWithFrame:UIScreen.mainScreen.bounds];
    
    RootViewController *root = [[RootViewController alloc]init];
    self.window.rootViewController = [[UINavigationController new]initWithRootViewController:root];
  // self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[[TestViewController alloc] init]];
    
    
    [self.window makeKeyAndVisible];
    return YES;
}

//强制横屏
- (NSUInteger)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window
{
    return UIInterfaceOrientationMaskPortrait;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}



- (void)application:(UIApplication *)application willChangeStatusBarOrientation:(UIInterfaceOrientation)newStatusBarOrientation duration:(NSTimeInterval)duration
{
    switch (newStatusBarOrientation) {
        case UIDeviceOrientationPortrait:
            NSLog(@"旋转之后，home键在下面");
            break;
        case UIDeviceOrientationPortraitUpsideDown:
            NSLog(@"旋转之后，home键在上面");
            break;
        case UIDeviceOrientationLandscapeLeft:
            NSLog(@"旋转之后，home键在左边");
            break;
        case UIDeviceOrientationLandscapeRight:
            NSLog(@"旋转之后，home 键在右边");
            break;
            
        default:
            break;
    }
}
- (void)application:(UIApplication *)application didChangeStatusBarOrientation:(UIInterfaceOrientation)oldStatusBarOrientation
{
    switch (oldStatusBarOrientation) {
        case UIDeviceOrientationPortrait:
            NSLog(@"旋转之前,home键在下面");
            break;
        case UIDeviceOrientationPortraitUpsideDown:
            NSLog(@"旋转之前,home键在上面");
            break;
        case UIDeviceOrientationLandscapeLeft:
            NSLog(@"旋转之前,home键在左边");
            break;
        case UIDeviceOrientationLandscapeRight:
            NSLog(@"旋转之前,home 键在右边");
            break;
            
        default:
            break;
    }
}

@end
