//
//  NSURLRequest+MutableCopyWorkaround.h
//  ProvidentFund
//
//  Created by 9188 on 2016/12/12.
//  Copyright © 2016年 9188. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURLRequest (MutableCopyWorkaround)
- (id) mutableCopyWorkaround;

@end
