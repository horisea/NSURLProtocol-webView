//
//  SCYWebViewCacheModel.h
//  ProvidentFund
//
//  Created by 9188 on 2016/12/12.
//  Copyright © 2016年 9188. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SCYWebViewCacheModel : NSObject<NSCoding>

@property (nonatomic , strong) NSData *data;
@property (nonatomic , strong) NSURLResponse *response;
@property (nonatomic , strong) NSURLRequest *redirectRequest;

@end
