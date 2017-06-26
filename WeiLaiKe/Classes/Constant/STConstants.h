//
//  STConstants.h
//  WeiLaiKe
//
//  Created by 沈昕权 on 2017/6/19.
//  Copyright © 2017年 广西实天科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface STConstants : NSObject

// 所有的约束常量都写到这个文件里面

#define SCREEN_WIDTH [UIScreen mainScreen].bounds.size.width
#define SCREEN_HEIGHT [UIScreen mainScreen].bounds.size.height
#define SCREEN_WINDOW [[[UIApplication sharedApplication] delegate] window]
#define WEAKSELF typeof(self) __weak weakSelf = self;

@end
