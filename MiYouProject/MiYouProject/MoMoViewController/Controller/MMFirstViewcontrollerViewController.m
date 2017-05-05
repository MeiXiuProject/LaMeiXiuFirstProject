//
//  MMFirstViewcontrollerViewController.m
//  MiYouProject
//
//  Created by wkj on 2017/5/5.
//  Copyright © 2017年 junhong. All rights reserved.
//

#import "MMFirstViewcontrollerViewController.h"

@interface MMFirstViewcontrollerViewController ()

@end

@implementation MMFirstViewcontrollerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //设置 tabbar 图标颜色
    for (UITabBarItem *item in self.tabBarController.tabBar.items) {
        item.selectedImage = [item.selectedImage imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        
        item.image = [item.image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        //item.title
    }
//    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor orangeColor], NSForegroundColorAttributeName, nil]];

//    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:[UIColor lightGrayColor], UITextAttributeTextColor, nil] forState:UIControlStateNormal];
//    [[UITabBarItem appearance] setTitleTextAttributes:                                                         [NSDictionary dictionaryWithObjectsAndKeys:[UIColor colorWithRed:59.0/255.0 green:207.0/255.0 blue:202.0/255.0 alpha:1],UITextAttributeTextColor, nil]forState:UIControlStateSelected];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
