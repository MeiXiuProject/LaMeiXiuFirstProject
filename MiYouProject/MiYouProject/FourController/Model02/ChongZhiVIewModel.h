//
//  ChongZhiVIewModel.h
//  MiYouProject
//
//  Created by wkj on 2017/5/12.
//  Copyright © 2017年 junhong. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark 充值UB
@interface ChongZhiVIewModel : NSObject


@property (strong, nonatomic) NSNumber * _Nullable  exchange;
@property (strong, nonatomic) NSArray * _Nullable gift;
@property (strong, nonatomic) NSNumber * _Nullable total;
@property (strong, nonatomic) NSString * _Nullable desc;
@property (strong, nonatomic) NSArray * _Nullable rechargeList;


+ (nonnull ChongZhiVIewModel *)shareModel;

@end

#pragma mark 充值VIP
@interface ChongZhiVIPViewModel : NSObject

@property (strong, nonatomic) NSArray * _Nullable grouplist;
@property (strong, nonatomic) NSArray * _Nullable gift;
@property (strong, nonatomic) NSNumber * _Nullable total;
@property (strong, nonatomic) NSString * _Nullable desc;
@property (strong, nonatomic) NSArray * _Nullable buyVipList;



+ (nonnull ChongZhiVIPViewModel *)shareModel;

@end
