//
//  AppDelegate.m
//  WeiLaiKe
//
//  Created by 沈昕权 on 2017/6/19.
//  Copyright © 2017年 广西实天科技有限公司. All rights reserved.
//

#import "AppDelegate.h"
#import "STTabBarController.h"
#import "STWebViewController.h"
#import "STUIWebViewController.h"
#import "STNavigationController.h"
#import "WKWebViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
//    STWebViewController *webViewController = [[STWebViewController alloc] init];
//    webViewController.url = @"http://wfx.501533.com.cn/app/index.php?i=13&c=entry&do=shop&m=ewei_shop";
    STWebViewController *web = [[STWebViewController alloc] init];
    [web loadWebURLSring:@"http://wfx.501533.com.cn/app/index.php?i=13&c=entry&do=shop&m=ewei_shop"];
    web.isNavHidden = YES;
    STNavigationController *nav = [[STNavigationController alloc] initWithRootViewController:web];
    self.window.rootViewController = nav;
    
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
