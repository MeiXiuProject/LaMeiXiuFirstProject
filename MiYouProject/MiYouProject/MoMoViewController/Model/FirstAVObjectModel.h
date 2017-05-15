//
//  FirstAVObjectModel.h
//  MiYouProject
//
//  Created by wkj on 2017/5/9.
//  Copyright © 2017年 junhong. All rights reserved.
//

#import <AVOSCloud/AVOSCloud.h>

@interface FirstAVObjectModel : AVObject<AVSubclassing>

@end

@interface ZhuBoClass : AVObject<AVSubclassing>



@end

@interface SiFangVideoClass : AVObject<AVSubclassing>

@property (strong, nonatomic) NSString * avator;
//@property (strong, nonatomic) NSString * objectid;
@property (strong, nonatomic) NSString * name;
@property (strong, nonatomic) NSNumber * time;
@property (strong, nonatomic) NSNumber * duration;
@property (strong, nonatomic) NSString * member;//用户名
@property (strong, nonatomic) NSNumber * commentNum;
@property (assign, nonatomic)  BOOL isBuy;
@property (strong, nonatomic) NSString * id;
@property (strong, nonatomic) NSString * pic;
@property (strong, nonatomic) NSString * price;


@end

@interface MoMoMemberClass : AVUser<AVSubclassing>

@property (strong, nonatomic) NSNumber * vip;
@property (strong, nonatomic) NSNumber * points;
@property (strong, nonatomic) NSNumber * id;
@property (copy, nonatomic) NSString * username;
@property (copy, nonatomic) NSString * password;

@end
