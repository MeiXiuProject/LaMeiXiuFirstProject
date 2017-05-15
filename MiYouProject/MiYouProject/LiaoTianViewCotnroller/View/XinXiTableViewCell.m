//
//  XinXiTableViewCell.m
//  SecondLiaoTianP
//
//  Created by wkj on 2017/4/26.
//  Copyright © 2017年 junhong. All rights reserved.
//

#import "XinXiTableViewCell.h"

@implementation XinXiTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    //只需要设置layer层的两个属性
    //设置圆角
    self.headerImageVIew.layer.cornerRadius = 5.0f;
    //将多余的部分切掉
    self.headerImageVIew.layer.masksToBounds = YES;
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
