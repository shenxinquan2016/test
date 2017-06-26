//
//  UIColor+ST.m
//  WeiLaiKe
//
//  Created by 沈昕权 on 2017/6/19.
//  Copyright © 2017年 广西实天科技有限公司. All rights reserved.
//

#import <HexColors/HexColors.h>

@implementation UIColor (ST)

+ (UIColor *)st_colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha {
    return [UIColor hx_colorWithHexRGBAString:hexString alpha:alpha];
}

+ (UIColor *)st_baseColor {
    return [UIColor st_colorWithHexString:@"#88c24a" alpha:1.f];
}

+ (UIColor *)st_backgroundColor {
    return [UIColor hx_colorWith8BitRed:248 green:248 blue:248 alpha:1.f];
}

+ (UIColor *)st_tabBarBackgroundColor {
    return [UIColor colorWithRed:235.f/255.f green:233.f/255.f blue:228.f/255.f alpha:1.f];
}

@end
