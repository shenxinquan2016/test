//
//  UIColor+ST.h
//  WeiLaiKe
//
//  Created by 沈昕权 on 2017/6/19.
//  Copyright © 2017年 广西实天科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>

// 常用颜色基类

@interface UIColor (ST)

+ (UIColor *)st_colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;

+ (UIColor *)st_baseColor;

+ (UIColor *)st_backgroundColor;

+ (UIColor *)st_tabBarBackgroundColor;

@end
