//
//  FirstAVObjectModel.m
//  MiYouProject
//
//  Created by wkj on 2017/5/9.
//  Copyright © 2017年 junhong. All rights reserved.
//

#import "FirstAVObjectModel.h"

@implementation FirstAVObjectModel

@end

@implementation ZhuBoClass

+ (NSString *)parseClassName{

    return @"ZhuBoClass";
}

@end

@implementation SiFangVideoClass

@dynamic avator;
@dynamic name;
@dynamic time;
@dynamic duration;
@dynamic member;
@dynamic commentNum;
@dynamic isBuy;
@dynamic id;
@dynamic pic;
@dynamic price;

+ (NSString *)parseClassName{
    return @"SiFangVideoInfoClass";
}




@end
@implementation MoMoMemberClass

@dynamic vip;
@dynamic id;
@dynamic points;
@dynamic username;
@dynamic password;
+ (NSString *)parseClassName{
    return @"_User";

}

@end


