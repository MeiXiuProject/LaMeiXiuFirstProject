//
//  XinXiTableViewCell.h
//  SecondLiaoTianP
//
//  Created by wkj on 2017/4/26.
//  Copyright © 2017年 junhong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XinXiTableViewCell : UITableViewCell


@property (strong, nonatomic) IBOutlet UIImageView *headerImageVIew;
@property (strong, nonatomic) IBOutlet UILabel *nickNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *contentLabel;
@property (strong, nonatomic) IBOutlet UILabel *timeLabel;
@property (strong, nonatomic) IBOutlet UIView *headBackView;


@end
