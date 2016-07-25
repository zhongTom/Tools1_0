//
//  NSObject+AFNetworking.h


//  Created on 15/7/21.
//  Copyright © 2015年 tom. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h"
@interface NSObject (AFNetworking)
/**
 *  GET请求
 */
+ (id)GET:(NSString *)path parameters:(NSDictionary *)parameters progress:(void(^)(NSProgress *downloadProgress))progress completionHandle:(void(^)(id responseObj, NSError *error))completionHandle;
/**
 
 *  POST请求
 */
+ (id)POST:(NSString *)path parameters:(NSDictionary *)parameters progress:(void(^)(NSProgress *downloadProgress))progress completionHandle:(void(^)(id responseObj, NSError *error))completionHandle;
@end
