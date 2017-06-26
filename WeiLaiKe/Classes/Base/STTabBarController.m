//
//  STTabBarController.m
//  WeiLaiKe
//
//  Created by 沈昕权 on 2017/6/19.
//  Copyright © 2017年 广西实天科技有限公司. All rights reserved.
//

#import "STTabBarController.h"
#import "STNavigationController.h"
#import "STHomeViewController.h"

@interface STTabBarController () <UITabBarControllerDelegate>

@end

@implementation STTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
    [self setupTabBar];
    [self setupControllers];
    [self setupTabBarItem];
}

#pragma mark - setup

- (void)setupControllers {
    NSArray *controllers = @[
                             [[STHomeViewController alloc] init],
                             [[STHomeViewController alloc] init],
                             [[STHomeViewController alloc] init],
                             [[STHomeViewController alloc] init],
                             [[STHomeViewController alloc] init],
                             ];
    NSArray *titles = @[
                        @"首页",
                        @"分类",
                        @"分销中心",
                        @"购物车",
                        @"会员中心",
                        ];
    NSArray *normalImages = @[@"sy_1", @"fj_1", @"sq_1", @"wd_1", @"sy_1"];
    NSArray *selectedImages = @[@"sy_2", @"fj_2", @"sq_2", @"wd_2", @"sy_1"];
    NSMutableArray *navigationContollers = [NSMutableArray array];
    [controllers enumerateObjectsUsingBlock:^(UIViewController *controller, NSUInteger index, BOOL *stop) {
        controller.navigationItem.titleView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"suntripLogoSmall"]];
        STNavigationController *navigationController = [[STNavigationController alloc] initWithRootViewController:controller];
        [navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
        navigationController.navigationBar.shadowImage = [[UIImage alloc] init];
        [navigationController.navigationBar setBackgroundImage:[[UIImage alloc] init] forBarMetrics:UIBarMetricsDefault];
        navigationController.navigationBar.shadowImage = [[UIImage alloc] init];
        navigationController.navigationBar.tintColor = [UIColor clearColor];
        navigationController.navigationBar.barTintColor = [UIColor clearColor];
        NSDictionary *attributes = @{NSForegroundColorAttributeName:[UIColor whiteColor]};
        navigationController.navigationBar.titleTextAttributes = attributes;
        NSString *title = titles[index];
        NSString *normalImage = normalImages[index];
        NSString *selectedImage = selectedImages[index];
        UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:title
                                                           image:[[UIImage imageNamed:normalImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
                                                   selectedImage:[[UIImage imageNamed:selectedImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        item.imageInsets = UIEdgeInsetsMake(-1, 0, 1, 0);
        [navigationController setTabBarItem:item];
        [navigationContollers addObject:navigationController];
        [navigationController.tabBarItem setTitlePositionAdjustment:UIOffsetMake(0, -3)];
    }];
    self.viewControllers = [navigationContollers copy];
}

- (void)setupTabBarItem {
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor darkGrayColor],
                                                        NSFontAttributeName : [UIFont systemFontOfSize:12.f]} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor st_baseColor],
                                                        NSFontAttributeName : [UIFont systemFontOfSize:12.f]} forState:UIControlStateSelected];
}

- (void)setupTabBar {
    self.tabBar.translucent = NO;
    self.tabBar.tintColor = [UIColor whiteColor];
    self.tabBar.barTintColor = [UIColor st_tabBarBackgroundColor];
    //    [self replaceTabBarSeparator];
    //    [self setupCuttingLine];
//        [self.tabBar addSubview:self.selectedItemBackgroundView];
//        self.selectedItemBackgroundView.frame = CGRectMake(0, 0, kTabBarItemWidth, 49.f);
}

@end
