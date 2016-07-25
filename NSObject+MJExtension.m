//
//  NSObject+AFNetworking.h


//  Created on 15/7/21.
//  Copyright © 2015年 tom. All rights reserved.
//

#import "NSObject+MJExtension.h"

@implementation NSObject (MJExtension)
+(id)parse:(id)object{
    if ([object isKindOfClass:[NSArray class]]) {
        return [self mj_objectArrayWithKeyValuesArray:object];
    }
    if ([object isKindOfClass:[NSDictionary class]]) {
        return [self mj_objectWithKeyValues:object];
    }
    return object;
}

+ (NSDictionary *)mj_objectClassInArray{
    return [self objectClassInArray];
}

+ (NSDictionary *)objectClassInArray{
    return nil;
}

+ (NSString *)replaceKeyFromPropertyName:(NSString *)propertyName{
    return propertyName;
}

+ (NSString *)mj_replacedKeyFromPropertyName121:(NSString *)propertyName{
    return [self replaceKeyFromPropertyName:propertyName];
}

+ (NSDictionary *)replaceKeyFromPropertyName{
    return nil;
}

+ (NSDictionary *)mj_replacedKeyFromPropertyName{
    return [self replaceKeyFromPropertyName];
}
@end
