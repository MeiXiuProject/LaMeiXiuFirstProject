//
//  ListTableViewController.m
//  SecondLiaoTianP
//
//  Created by wkj on 2017/4/25.
//  Copyright © 2017年 junhong. All rights reserved.
//

#import "ListTableViewController.h"

@interface ListTableViewController ()

@end

@implementation ListTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //self.automaticallyAdjustsScrollViewInsets = NO;//不适应 起始坐标
    

    //self.navigationController.navigationBar.topItem.title=@"消息";
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerNib:[UINib nibWithNibName:@"XinXiTableViewCell" bundle:[NSBundle mainBundle]] forCellReuseIdentifier:@"XinXiTableViewCellID"];
}
- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    self.navigationController.navigationBar.translucent = NO;
    [self.navigationController setNavigationBarHidden:NO];
    //self.title = @"消息";
    [self.navigationController.navigationBar.topItem setTitleView:nil];
    self.navigationController.navigationBar.topItem.title=@"消息";
}
- (void)viewDidDisappear:(BOOL)animated{
    [super viewDidDisappear:animated];
    //[self.navigationController.navigationBar.topItem setTitleView:nil];
    //self.navigationController.navigationBar.topItem.title=nil;
    //[self.navigationController setNavigationBarHidden:YES];
}

#pragma mark TableviewDelegate代理方发 START
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 70.0f;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString * cellID = @"XinXiTableViewCellID";
//    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID];
//    if (!cell) {
//        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellID];
//    }
    
    XinXiTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];
    //[cell.headerImageVIew showBadgeValue:@"5"];
    [cell.headBackView showBadgeValue:@"3"];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    SubXinXiViewController * vc = [[SubXinXiViewController alloc]init];
    
    [self.navigationController pushViewController:vc animated:YES];
    
}

#pragma end mark 打理方法结束
/*
 *懒加载 START
 */
- (NSMutableArray *)listARR{
    if (!_listARR) {
        _listARR = [[NSMutableArray alloc]init];
    }
    return _listARR;
}

/*
 *懒加载 END
 */
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)setListXiaoXiBlocks:(ListXiaoXiBlock)block{
    self.listXinXiBlock = block;
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
