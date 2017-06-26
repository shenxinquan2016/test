//
//  STUIWebViewController.m
//  WeiLaiKe
//
//  Created by 沈昕权 on 2017/6/21.
//  Copyright © 2017年 广西实天科技有限公司. All rights reserved.
//

#import "STUIWebViewController.h"

@interface STUIWebViewController () <UIWebViewDelegate>
@property (nonatomic, strong) UIWebView *webView;

@end

@implementation STUIWebViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    self.webView.delegate = self;
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:self.url]];
    [self.webView loadRequest:request];
    [self.view addSubview:self.webView];
}

- (BOOL)webView:(UIWebView *)webView shouldStartLoadWithRequest:(NSURLRequest *)request navigationType:(UIWebViewNavigationType)navigationType {
    return YES;
}

- (void)webViewDidStartLoad:(UIWebView *)webView {
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    //https://ss0.bdstatic.com/5aV1bjqh_Q23odCf/static/superman/js/lib/jquery-1.10.2.js
    NSString *commond = @"window.onload=function(){var jq=document.createElement(\"script\");jq.setAttribute(\"src\",\"https://code.jquery.com/jquery-3.2.1.min.js\");document.getElementsByTagName(\"head\")[0].appendChild(jq);window.setTimeout(\"exec()\",1000)};function exec(){$('.cart_top'). removeClass('.cart_top')};";
    [self.webView stringByEvaluatingJavaScriptFromString:commond];
    
    [self.webView stringByEvaluatingJavaScriptFromString:@"document.getElementById('goup').style.display='none'"];

}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    
}

@end
