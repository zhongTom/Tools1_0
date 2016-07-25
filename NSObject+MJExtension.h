//
//  NSObject+AFNetworking.h


//  Created on 15/7/21.
//  Copyright © 2015年 tom. All rights reserved.


#import <Foundation/Foundation.h>
#import "MJExtension.h"
@interface NSObject (MJExtension)
/**
 *  数组或字典转模型
 *  
 *  @param object 数组或字典
 *
 *  @return 与object类型相同
 */
+ (id)parse:(id)object;

//封装objectClassInArray
+ (NSDictionary *)objectClassInArray;

/**
 *  驼峰标识转带_的服务器标识
 *
 *  @param propertyName 属性名
 *
 *  @return [propertyName mj_underlineFromCamel]
 */
+ (NSString *)replaceKeyFromPropertyName:(NSString *)propertyName;

/**
 *  系统关键字属性转换
 *
 *  @return 例如 @{@"ID": @"id"}   key是id, 属性名ID
 */

+ (NSDictionary *)replaceKeyFromPropertyName;
@end
