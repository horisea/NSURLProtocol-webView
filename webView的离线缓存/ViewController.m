//
//  ViewController.m
//  webView的离线缓存
//
//  Created by 9188 on 2016/12/21.
//  Copyright © 2016年 朱同海. All rights reserved.
//

#import "ViewController.h"
#import "SCYCacheURLProtocol.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [NSURLProtocol registerClass:[SCYCacheURLProtocol class]];

    self.view.backgroundColor = [UIColor cyanColor];
    [self.webView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://blog.csdn.net/horisea/article/details/52191573"]]];
    
    
    
    [NSURLProtocol unregisterClass:[SCYCacheURLProtocol class]];
}

@end
