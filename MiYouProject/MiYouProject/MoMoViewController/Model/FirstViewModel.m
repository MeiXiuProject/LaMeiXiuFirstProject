//
//  FirstViewModel.m
//  MiYouProject
//
//  Created by wkj on 2017/5/8.
//  Copyright © 2017年 junhong. All rights reserved.
//

#import "FirstViewModel.h"

@implementation FirstViewModel

+ (void)signUpAndLoginFunction{
    NSString * usernameZl = [NSUserdefalutZL objectForKey:MOMO_MEMBER_USERNAME];
    NSString * userPassword = [NSUserdefalutZL objectForKey:MOMO_MEMBER_PASSWORD];
    if (zlStringIsEmpty(usernameZl)) {
        NSString *username = [self suiJiUserName];
        NSString *password = @"123456";
        NSString *email = @"";
        if (username && password && email) {
            // LeanCloud - 注册
            // https://leancloud.cn/docs/leanstorage_guide-objc.html#用户名和密码注册
            AVUser *user = [AVUser user];
            user.username = username;
            user.password = password;
            //user.email = email;
            [user signUpInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
                if (succeeded) {
                    NSLog(@"注册成功！%@",username);
                    //[self performSegueWithIdentifier:@"fromSignUpToProducts" sender:nil];
                    [NSUserdefalutZL setValue:username forKey:MOMO_MEMBER_USERNAME];
                    [NSUserdefalutZL setValue:password forKey:MOMO_MEMBER_PASSWORD];
                } else {
                    NSLog(@"注册失败 %@", error);
                }
            }];
        }
    }else{
        
        if (usernameZl && userPassword) {
            // LeanCloud - 登录
            // https://leancloud.cn/docs/leanstorage_guide-objc.html#登录
            [AVUser logInWithUsernameInBackground:usernameZl password:userPassword block:^(AVUser *user, NSError *error) {
                if (error) {
                    NSLog(@"登录失败 %@", error);
                } else {
                    
                    NSLog(@"登录成功！");
                    //[self performSegueWithIdentifier:@"fromLoginToProducts" sender:nil];
                }
            }];
        }
        
        
    }
    

}

+ (NSString *)suiJiUserName{
    NSString * stringName = nil;
    long int num = 1000000 + arc4random()%9999999;
    const int N = 2;
    NSString *sourceString = @"ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    NSMutableString *result = [[NSMutableString alloc] init];
    // srand((int)time(0));
    for (int i = 0; i < N; i++) {
        [result appendString:[sourceString substringWithRange:NSMakeRange(arc4random() % [sourceString length], 1)]];
    }
    stringName = [NSString stringWithFormat:@"MOMO%@%ld",result,num];
    NSLog(@"生成的用户名：%@",stringName);
    return stringName;
}
@end

@implementation MoMoZhuBoViewModel

+ (void)loadZhuBoQueryList{
    // LeanCloud - 查询 - 获取商品列表
    // https://leancloud.cn/docs/leanstorage_guide-objc.html#查询
    AVQuery *query = [AVQuery queryWithClassName:@"ZhuBoClass"];
    [query orderByDescending:@"createdAt"];
    query.limit = 10;
    // owner 为 Pointer，指向 _User 表
    //[query includeKey:@"owner"];
    // image 为 File
    //[query includeKey:@"image"];
    [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
        if (!error) {
            NSLog(@"查找的对象01的个数为：%ld",objects.count);
            for (int i = 0;i<objects.count;i++) {
                
                AVObject * zhuboObject = [AVObject objectWithClassName:@"ZhuBoClass"];
                NSString * nickName = [zhuboObject objectForKey:@"nickname"];
                NSLog(@"昵称为：%@",nickName);
                
            }
        }
    }];

}


@end
