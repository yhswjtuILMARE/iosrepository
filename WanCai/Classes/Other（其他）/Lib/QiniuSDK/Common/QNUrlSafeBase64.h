//
//  QiniuSDK
//
//  Created by bailong on 14-9-28.
//  Copyright (c) 2014年 Qiniu. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *    url safe base64 编码类, 对/ 做了处理
 */
@interface QNUrlSafeBase64 : NSObject

/**
 *    字符串编码
 *
 *    @param source 字符串
 *
 *    @return base64 字符串
 */
+ (NSString *)encodeString:(NSString *)source;

/**
 *    二进制数据编码
 *
 *    @param source 二进制数据
 *
 *    @return base64字符串
 */
+ (NSString *)encodeData:(NSData *)source;

@end
// 版权属于原作者
// http://code4app.com (cn) http://code4app.net (en)
// 发布代码于最专业的源码分享网站: Code4App.com