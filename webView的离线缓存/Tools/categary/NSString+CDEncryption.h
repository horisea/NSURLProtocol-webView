//
//  NSString+CDEncryption.h
//  CDEncryptionAndDecryptionDemo
//
//  Created by Cheng on 14/6/24.
//  Copyright (c) 2014年 Cheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (CDEncryption)

/**
 *  md5加密
 *
 *  @return (NSString *) 密文
 */
- (NSString *)cd_md5HexDigest;

@end


