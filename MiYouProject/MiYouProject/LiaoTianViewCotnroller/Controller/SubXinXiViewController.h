//
//  SubXinXiViewController.h
//  SecondLiaoTianP
//
//  Created by wkj on 2017/4/26.
//  Copyright © 2017年 junhong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UUInputFunctionView.h"
#import "MJRefresh.h"
#import "UUMessageCell.h"
#import "ChatModel.h"
#import "UUMessageFrame.h"
#import "UUMessage.h"
@interface SubXinXiViewController : UIViewController
@property (strong, nonatomic) IBOutlet UITableView *chatTableView;
@property (strong, nonatomic) IBOutlet NSLayoutConstraint *bottomConstraint;
@end
