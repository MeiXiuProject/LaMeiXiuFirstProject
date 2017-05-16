//
//  ListTableViewController.h
//  SecondLiaoTianP
//
//  Created by wkj on 2017/4/25.
//  Copyright © 2017年 junhong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XinXiTableViewCell.h"
#import "UIView+HeinQi.h"
//#import "ViewController.h"
#import "SubXinXiViewController.h"

typedef void(^ListXiaoXiBlock)(BOOL success);

@interface ListTableViewController : ZLBaseViewController<UITableViewDelegate,UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) NSMutableArray * listARR;
@property (copy, nonatomic) ListXiaoXiBlock listXinXiBlock;

- (void)setListXiaoXiBlocks:(ListXiaoXiBlock )block;

@end
