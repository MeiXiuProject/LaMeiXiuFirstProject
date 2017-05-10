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
    [self setTabBarImageAndTextColor];
    
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
    [FirstViewModel signUpAndLoginFunction];
    
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
