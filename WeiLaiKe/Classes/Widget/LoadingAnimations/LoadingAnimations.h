//
//  LoadingAnimations.h
//  WeiLaiKe
//
//  Created by 沈昕权 on 2017/6/21.
//  Copyright © 2017年 广西实天科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <MBProgressHUD/MBProgressHUD.h>

#define kHudShowDelay   1.3

typedef NS_ENUM(NSInteger, LoadingAnimationType) {
    LoadingAnimationTypeNone,
};

@interface LoadingAnimations : NSObject <MBProgressHUDDelegate>

{
    MBProgressHUD *_HUD;
    UIWindow *_window;
}

+ (LoadingAnimations *)shared;

/**
 * @brief 展示loading等待(那朵菊花)
 * @param str  展示的文字
 */
- (void)showLoading:(NSString *)str;

/**
 * @brief 展示loading等待(那朵菊花)，可手动设置超时
 * @param str       展示的文字
 * @param timeout   超时时间
 */
-(void)showLoading:(NSString*)str timeout:(NSTimeInterval)timeout;

/**
 * @brief 展示提示文字，如“操作成功”、“请求失败，请稍后再试”等,可添加自定义图片
 * @param str           文字
 * @param imgName       可展示一张图片
 */
-(void)showContent:(NSString*)str andCustomImage:(NSString *)imgName;

/**
 * 隐藏hud
 */
- (void)hideLoading;

-(void)showContent:(NSString *)str andTime:(int)seconds;


@end
