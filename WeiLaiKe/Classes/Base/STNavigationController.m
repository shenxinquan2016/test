//
//  STNavigationController.m
//  WeiLaiKe
//
//  Created by 沈昕权 on 2017/6/19.
//  Copyright © 2017年 广西实天科技有限公司. All rights reserved.
//

#import "STNavigationController.h"

@interface STNavigationController () <UINavigationBarDelegate>

@end

@implementation STNavigationController

- (instancetype)initWithRootViewController:(UIViewController *)rootViewController {
    if (self = [super initWithRootViewController:rootViewController]) {
        [self customBackBarButtonWith:rootViewController];
    }
    return self;
}

- (void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated {
    if (self.viewControllers.count) {
        [viewController setHidesBottomBarWhenPushed:YES];
        [self customBackBarButtonWith:viewController];
    }
    [super pushViewController:viewController animated:animated];
}

- (void)customBackBarButtonWith:(UIViewController *)viewController {
    UIBarButtonItem *backBarButton = [[UIBarButtonItem alloc] init];
    backBarButton.title = @"返回";
    viewController.navigationItem.backBarButtonItem = backBarButton;
//    UIEdgeInsets insets = UIEdgeInsetsMake(0, 0, -5.f, 0);
//    UIImage *alignedImage = [[UIImage imageNamed:@"icnArrowLeftBack"] imageWithAlignmentRectInsets:insets];
//    [[UINavigationBar appearance] setBackIndicatorImage:alignedImage];
//    [[UINavigationBar appearance] setBackIndicatorTransitionMaskImage:alignedImage];
}

@end
