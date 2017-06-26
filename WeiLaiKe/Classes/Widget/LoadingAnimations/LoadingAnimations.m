//
//  LoadingAnimations.m
//  WeiLaiKe
//
//  Created by 沈昕权 on 2017/6/21.
//  Copyright © 2017年 广西实天科技有限公司. All rights reserved.
//

#import "LoadingAnimations.h"

@implementation LoadingAnimations

static LoadingAnimations *loadingAnimations = nil;

+ (LoadingAnimations *)shared {
    if (loadingAnimations == nil) {
        loadingAnimations = [[LoadingAnimations alloc] init];
    }
    return loadingAnimations;
}

+ (id)allocWithZone:(NSZone *)zone {
    @synchronized(self) {
        if (loadingAnimations == nil) {
            loadingAnimations = [super allocWithZone:zone];
            return loadingAnimations;
        }
    }
    return nil;
}

- (id)init
{
    if ((self = [super init]))
    {
        _window = [[UIApplication sharedApplication].windows objectAtIndex:0];
        _HUD = [[MBProgressHUD alloc] initWithWindow:_window];
    }
    return self;
}

//展示Loading界面，str为展示的字符串
- (void)showLoading:(NSString *)str {
    if(_HUD) {
        [self hideLoading];
    }
    
    //if (_HUD == nil)
    {
        _HUD = [[MBProgressHUD alloc] initWithWindow:_window];
        _HUD.removeFromSuperViewOnHide = YES;
    }
    
    _HUD.labelText = str;
    //_HUD.backgroundColor = [UIColor colorWithWhite:0.3 alpha:0.6];
    _HUD.dimBackground = YES;
    
    [_window addSubview:_HUD];
    [_HUD show:YES];
}


- (void)showLoading:(NSString *)str timeout:(NSTimeInterval)timeout
{
    if(_HUD) {
        [self hideLoading];
    }
    
    _HUD = [[MBProgressHUD alloc] initWithWindow:_window];
    _HUD.removeFromSuperViewOnHide = YES;
    _HUD.labelText = str;
    _HUD.dimBackground = YES;
    
    [_window addSubview:_HUD];
    [_HUD showAnimated:YES];
    if (timeout > 0) {
        [_HUD hideAnimated:YES afterDelay:timeout];
    }
}

- (void)hideLoading
{
    [_HUD hideAnimated:YES];
    
    [_HUD removeFromSuperview];
    _HUD = nil;
}

-(void)showContent:(NSString *)str andCustomImage:(NSString *)imgName
{
    if(_HUD)
    {
        [self hideLoading];
    }
    //if (!_HUD)
    {
        _HUD = [[MBProgressHUD alloc] initWithWindow:_window];
        _HUD.removeFromSuperViewOnHide = YES;
    }
    
    _HUD.labelText = str;
    if(imgName && [imgName length] > 0)
    {
        _HUD.customView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imgName]];
        _HUD.mode = MBProgressHUDModeCustomView;
    }
    else
    {
        _HUD.mode = MBProgressHUDModeText;
    }
    
    _HUD.userInteractionEnabled = NO;
    
    [_window addSubview:_HUD];
    [_HUD showAnimated:YES];
    
    [_HUD hideAnimated:YES afterDelay:kHudShowDelay];
}

-(void)showContent:(NSString *)str andTime:(int)seconds
{
    if (_HUD)
    {
        [self hideLoading];
    }
    
    _HUD = [[MBProgressHUD alloc] initWithWindow:_window];
    _HUD.removeFromSuperViewOnHide = YES;
    _HUD.labelText = str;
    _HUD.mode = MBProgressHUDModeText;
    
    _HUD.userInteractionEnabled = NO;
    [_window addSubview:_HUD];
    [_HUD showAnimated:YES];
    [_HUD hideAnimated:YES afterDelay:seconds];
}

@end
