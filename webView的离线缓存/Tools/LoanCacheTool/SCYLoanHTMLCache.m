//
//  SCYLoanHTMLCache.m
//  ProvidentFund
//
//  Created by 9188 on 2016/12/9.
//  Copyright © 2016年 9188. All rights reserved.
//

#import "SCYLoanHTMLCache.h"
static NSString *const cacheName=@"SCYProvidentFundLoanHTMLString";

@implementation SCYLoanHTMLCache
+ (instancetype)defaultcache{
    static SCYLoanHTMLCache *cache = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        cache = [[SCYLoanHTMLCache alloc] initWithName:cacheName];
    });
    return cache;
}

@end
