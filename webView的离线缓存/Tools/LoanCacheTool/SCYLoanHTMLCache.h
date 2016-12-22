//
//  SCYLoanHTMLCache.h
//  ProvidentFund
//
//  Created by 9188 on 2016/12/9.
//  Copyright © 2016年 9188. All rights reserved.
//  一定单例模式（考虑到若URL变了，移除之前的）（为毛不统一key，覆盖..固定的key缓存只显示字符串，i++）
//
     /*回答上面括号问题: 1.例如加载了http://www.huishuaka.com/5/dk/
                      2.NSURLProtocol会缓存很多资源文件， 比如http://www.huishuaka.com/5/dk/.css  .jpg  样式和图片， 会生成新的NSURLProtocol实例对象
                      3.若不是单例，缓存里只有一个缓存（肯定会有一堆问题）
                      4.缓存一个网页，不只是一个url的内容，，而是一个url下所有的资源文件
     */

#import <YYCache/YYCache.h>

@interface SCYLoanHTMLCache : YYCache
+ (instancetype)defaultcache;
@end
