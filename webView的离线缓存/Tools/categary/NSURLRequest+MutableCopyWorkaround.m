//
//  NSURLRequest+MutableCopyWorkaround.m
//  ProvidentFund
//
//  Created by 9188 on 2016/12/12.
//  Copyright © 2016年 9188. All rights reserved.
//

#import "NSURLRequest+MutableCopyWorkaround.h"

@implementation NSURLRequest (MutableCopyWorkaround)
- (id) mutableCopyWorkaround {
    NSMutableURLRequest *mutableURLRequest = [[NSMutableURLRequest alloc] initWithURL:[self URL]
                                                                          cachePolicy:[self cachePolicy]
                                                                      timeoutInterval:[self timeoutInterval]];
    [mutableURLRequest setAllHTTPHeaderFields:[self allHTTPHeaderFields]];
    if ([self HTTPBodyStream]) {
        [mutableURLRequest setHTTPBodyStream:[self HTTPBodyStream]];
    } else {
        [mutableURLRequest setHTTPBody:[self HTTPBody]];
    }
    [mutableURLRequest setHTTPMethod:[self HTTPMethod]];
    
    return mutableURLRequest;
}
@end
