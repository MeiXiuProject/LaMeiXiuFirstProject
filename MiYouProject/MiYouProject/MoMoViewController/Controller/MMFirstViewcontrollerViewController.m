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
    // 设置 tabbarItem 选中状态下的文字颜色(不被系统默认渲染,显示文字自定义颜色)
    NSDictionary *dictHome = [NSDictionary dictionaryWithObject:[UIColor colorWithHexString:Main_BackgroundColor] forKey:NSForegroundColorAttributeName];
    [self.tabBarItem setTitleTextAttributes:dictHome forState:UIControlStateSelected];
    
    //全局队列  并行 异步函数
    [GlobalQueue executeAsyncTask:^{
        [self loadLeanCloud];
    }];
    //主队列
    [MainQueue executeAsyncTask:^{
        
    }];
    //
    
}

- (void)loadLeanCloud{
    [self FirstTestLeanCloudFunction];
    [self SecTestLeanCloudFunction];
    [self ThirdTestLeanCloudFunction];
    [self FourTestLeanCloudFunction];
    [self FiveTestLeanCloudFunction];
}

- (void)FirstTestLeanCloudFunction{
    //注册登录
    //[FirstViewModel signUpAndLoginFunction];
    
    [MoMoZhuBoViewModel loadZhuBoQueryList];
    [SiFangViewModel loadSiFangQueryList];
}



- (void)SecTestLeanCloudFunction{
    
    
    
}

- (void)ThirdTestLeanCloudFunction{
    
    
    
}

- (void)FourTestLeanCloudFunction{
    
    
    
}

- (void)FiveTestLeanCloudFunction{
    
    
    
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
