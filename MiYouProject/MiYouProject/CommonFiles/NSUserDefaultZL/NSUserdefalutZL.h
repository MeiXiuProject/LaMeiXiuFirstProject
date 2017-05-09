//
//  NSUserdefalutZL.h
//  MiYouProject
//
//  Created by wkj on 2017/5/8.
//  Copyright © 2017年 junhong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserdefalutZL : NSObject

+ (void)setObject:(id)value forKey:(NSString *)defaultName;

+ (id)objectForKey:(NSString *)defaultName;

+ (void)setValue:(id)value forKey:(NSString *)defaultName;

+ (id)valueForKey:(NSString *)defaultName;

+(void)removeObjectForKey:(NSString*)key;

+(void)clearAll;

@end
