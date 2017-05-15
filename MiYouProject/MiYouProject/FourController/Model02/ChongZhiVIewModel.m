//
//  ChongZhiVIewModel.m
//  MiYouProject
//
//  Created by wkj on 2017/5/12.
//  Copyright © 2017年 junhong. All rights reserved.
//

#import "ChongZhiVIewModel.h"

@implementation ChongZhiVIewModel

+ (nonnull ChongZhiVIewModel *)shareModel{
    
    ChongZhiVIewModel * _instance = [[ChongZhiVIewModel alloc] init];
    NSDictionary * dic = [self startAFNetworking];
    _instance.exchange = dic[@"exchange"];
    _instance.gift = dic[@"gift"];
    _instance.total = dic[@"total"];
    _instance.desc = dic[@"desc"];
    _instance.rechargeList = dic[@"rechargeList"];
    return _instance;
}

+ (NSMutableDictionary * )startAFNetworking{
    NSMutableDictionary * dic = [NSMutableDictionary new];
    [dic setValue:[NSNumber numberWithInt:100] forKey:@"exchange"];
    NSArray * giftARR = @[@"赠送100U币",
                          @"赠送400U币",
                          @"赠送900U币",
                          @"赠送2500U币+赠送白金会员会员",
                          @"赠送10000U币+赠送王者会员会员",
                          @"赠送40000U币"];
    [dic setValue:giftARR forKey:@"gift"];
    [dic setValue:[NSNumber numberWithInt:5263941] forKey:@"total"];
    [dic setValue:@"充UB开启愉快旅程" forKey:@"desc"];
    
    NSArray * rechargeARR = @[@{
    @"name": @"usr122480",
    @"content": @"5分钟前充值了5000U币"
    },
    @{
    @"name": @"usr338819",
    @"content": @"5分钟前充值了50000U币"
    },
    @{
    @"name": @"usr175639",
    @"content": @"5分钟前充值了10000U币"
    },
    @{
    @"name": @"usr667390",
    @"content": @"5分钟前充值了50000U币"
    },
    @{
    @"name": @"usr664993",
    @"content": @"5分钟前充值了5000U币"
    },
    @{
    @"name": @"usr578613",
    @"content": @"5分钟前充值了5000U币"
    },
    @{
    @"name": @"usr301475",
    @"content": @"5分钟前充值了3000U币"
    },
    @{
    @"name": @"usr918761",
    @"content": @"5分钟前充值了10000U币"
    },
    @{
    @"name": @"usr486481",
    @"content": @"5分钟前充值了3000U币"
    },
    @{
    @"name": @"usr908572",
    @"content": @"5分钟前充值了1000U币"
    },
    @{
    @"name": @"usr668734",
    @"content": @"5分钟前充值了10000U币"
    },
    @{
    @"name": @"usr457949",
    @"content": @"5分钟前充值了1000U币"
    },
    @{
    @"name": @"usr433274",
    @"content": @ "5分钟前充值了2000U币"
    },
    @{
    @"name": @"usr509549",
    @"content": @"5分钟前充值了2000U币"
    },
    @{
    @"name": @"usr998580",
    @"content": @"5分钟前充值了50000U币"
    },
    @{
    @"name": @"usr836034",
    @"content": @"5分钟前充值了1000U币"
    },
    @{
    @"name": @"usr517963",
    @"content": @"5分钟前充值了1000U币"
    },
    @{
    @"name": @"usr944778",
    @"content": @"5分钟前充值了5000U币"
    },
    @{
    @"name": @"usr840136",
    @"content": @"5分钟前充值了5000U币"
    },
    @{
    @"name": @"usr540191",
    @"content": @"5分钟前充值了3000U币"
    }];
    [dic setValue:rechargeARR forKey:@"rechargeList"];
    return dic;
}


@end

@implementation ChongZhiVIPViewModel

+ (nonnull ChongZhiVIPViewModel *)shareModel{
    ChongZhiVIPViewModel * _instance = [[ChongZhiVIPViewModel alloc]init];
    NSDictionary * dic = [self startVIPAFNetworking];
    _instance.gift = dic[@"gift"];
    _instance.total = dic[@"total"];
    _instance.desc = dic[@"desc"];
    _instance.buyVipList = dic[@"buyVipList"];
    return _instance;
}

+ (NSMutableDictionary *)startVIPAFNetworking{
    
    NSMutableDictionary * dic = [NSMutableDictionary new];
    NSArray * giftARR = @[@"VIP等级 1",
                          @"VIP等级 2",
                          @"VIP等级 3",
                          @"VIP等级 4",
                          @"VIP等级 5",
                          @"VIP等级 6"];
    [dic setValue:giftARR forKey:@"gift"];
    [dic setValue:[NSNumber numberWithInt:125893] forKey:@"total"];
    [dic setValue:@"充VIP开启愉快旅程" forKey:@"desc"];
    
    NSArray * rechargeARR = @[@{
                                  @"name": @"usr122480",
                                  @"content": @"5分钟前充值了青铜会员"
                                  },
                              @{
                                  @"name": @"usr338819",
                                  @"content": @"5分钟前充值了王者会员"
                                  },
                              @{
                                  @"name": @"usr175639",
                                  @"content": @"5分钟前充值了青铜会员"
                                  },
                              @{
                                  @"name": @"usr667390",
                                  @"content": @"5分钟前充值了王者会员"
                                  },
                              @{
                                  @"name": @"usr664993",
                                  @"content": @"5分钟前充值了黑金会员"
                                  },
                              @{
                                  @"name": @"usr578613",
                                  @"content": @"5分钟前充值了青铜会员"
                                  },
                              @{
                                  @"name": @"usr301475",
                                  @"content": @"5分钟前充值了王者会员"
                                  },
                              @{
                                  @"name": @"usr918761",
                                  @"content": @"5分钟前充值了青铜会员"
                                  },
                              @{
                                  @"name": @"usr486481",
                                  @"content": @"5分钟前充值了王者会员"
                                  },
                              @{
                                  @"name": @"usr908572",
                                  @"content": @"5分钟前充值了青铜会员"
                                  },
                              @{
                                  @"name": @"usr668734",
                                  @"content": @"5分钟前充值了黑金会员"
                                  },
                              @{
                                  @"name": @"usr457949",
                                  @"content": @"5分钟前充值了王者会员"
                                  },
                              @{
                                  @"name": @"usr433274",
                                  @"content": @ "5分钟前充值了黑金会员"
                                  },
                              @{
                                  @"name": @"usr509549",
                                  @"content": @"5分钟前充值了黑金会员"
                                  },
                              @{
                                  @"name": @"usr998580",
                                  @"content": @"5分钟前充值了黑金会员"
                                  },
                              @{
                                  @"name": @"usr836034",
                                  @"content": @"5分钟前充值了钻石会员"
                                  },
                              @{
                                  @"name": @"usr517963",
                                  @"content": @"5分钟前充值了钻石会员"
                                  },
                              @{
                                  @"name": @"usr944778",
                                  @"content": @"5分钟前充值了黑金会员"
                                  },
                              @{
                                  @"name": @"usr840136",
                                  @"content": @"5分钟前充值了钻石会员"
                                  },
                              @{
                                  @"name": @"usr540191",
                                  @"content": @"5分钟前充值了钻石会员"
                                  }];
    [dic setValue:rechargeARR forKey:@"buyVipList"];
    return dic;

}

@end
