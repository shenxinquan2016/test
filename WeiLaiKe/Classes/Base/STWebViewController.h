//
//  STWebViewController.h
//  WeiLaiKe
//
//  Created by 沈昕权 on 2017/6/20.
//  Copyright © 2017年 广西实天科技有限公司. All rights reserved.
//

#import "STViewController.h"
#import <WebKit/WebKit.h>

@interface STWebViewController : STViewController

@property (nonatomic, assign) NSInteger count;

/** 是否显示Nav */
@property (nonatomic,assign) BOOL isNavHidden;

/**
 加载纯外部链接网页
 
 @param string URL地址
 */
- (void)loadWebURLSring:(NSString *)string;

/**
 加载本地网页
 
 @param string 本地HTML文件名
 */
- (void)loadWebHTMLSring:(NSString *)string;

/**
 加载外部链接POST请求(注意检查 XFWKJSPOST.html 文件是否存在 )
 postData请求块 注意格式：@"\"username\":\"xxxx\",\"password\":\"xxxx\""
 
 @param string 需要POST的URL地址
 @param postData post请求块
 */
- (void)POSTWebURLSring:(NSString *)string postData:(NSString *)postData;


@end
