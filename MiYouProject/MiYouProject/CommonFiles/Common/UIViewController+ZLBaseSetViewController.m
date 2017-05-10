//
//  UIViewController+ZLBaseSetViewController.m
//  MiYouProject
//
//  Created by wkj on 2017/5/10.
//  Copyright © 2017年 junhong. All rights reserved.
//

#import "UIViewController+ZLBaseSetViewController.h"

@implementation UIViewController (ZLBaseSetViewController)

- (void)setTabBarImageAndTextColor{
    //设置 tabbar 图标颜色
    for (UITabBarItem *item in self.tabBarController.tabBar.items) {
        item.selectedImage = [item.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        item.image = [item.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //item.title
    }
    // 设置 tabbarItem 选中状态下的文字颜色(不被系统默认渲染,显示文字自定义颜色)
    NSDictionary *dictHome = [NSDictionary dictionaryWithObject:[UIColor colorWithHexString:Main_BackgroundColor] forKey:NSForegroundColorAttributeName];
    [self.tabBarItem setTitleTextAttributes:dictHome forState:UIControlStateSelected];

}

@end
