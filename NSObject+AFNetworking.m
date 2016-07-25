//
//  NSObject+AFNetworking.h


//  Created on 15/7/21.
//  Copyright © 2015年 tom. All rights reserved.
//

#import "NSObject+AFNetworking.h"

@implementation NSObject (AFNetworking)
+ (id)GET:(NSString *)path parameters:(NSDictionary *)parameters progress:(void (^)(NSProgress *))progress completionHandle:(void (^)(id, NSError *))completionHandle{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithArray:@[@"text/html", @"text/plain", @"text/json", @"text/javascript", @"application/json"]];
    manager.requestSerializer.timeoutInterval = 30;
    manager.requestSerializer.cachePolicy = NSURLRequestUseProtocolCachePolicy;
    return  [manager GET:path parameters:parameters progress:progress success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completionHandle(responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completionHandle(nil,error);
    }];
}

+ (id)POST:(NSString *)path parameters:(NSDictionary *)parameters progress:(void (^)(NSProgress *))progress completionHandle:(void (^)(id, NSError *))completionHandle{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithArray:@[@"text/html", @"text/plain", @"text/json", @"text/javascript", @"application/json"]];
    manager.requestSerializer.timeoutInterval = 30;
    manager.requestSerializer.cachePolicy = NSURLRequestUseProtocolCachePolicy;
    return  [manager POST:path parameters:parameters progress:progress success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        completionHandle(responseObject,nil);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        completionHandle(nil,error);
    }];
}
@end
