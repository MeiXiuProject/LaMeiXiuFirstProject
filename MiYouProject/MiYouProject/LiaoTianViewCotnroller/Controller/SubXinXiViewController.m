//
//  SubXinXiViewController.m
//  SecondLiaoTianP
//
//  Created by wkj on 2017/4/26.
//  Copyright © 2017年 junhong. All rights reserved.
//

#import "SubXinXiViewController.h"

@interface SubXinXiViewController ()<UUInputFunctionViewDelegate,UUMessageCellDelegate,UITableViewDataSource,UITableViewDelegate>
@property (strong, nonatomic) MJRefreshNormalHeader *head;
@property (strong, nonatomic) ChatModel *chatModel;
@end

@implementation SubXinXiViewController{
    UUInputFunctionView *IFView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //[self.chatTableView registerClass:[UUMessage class] forCellReuseIdentifier:@"CellID"];
    [self addRefreshViews];
    [self loadBaseViewsAndData];
    // Do any additional setup after loading the view from its nib.
}
- (void)addRefreshViews
{
    __weak typeof(self) weakSelf = self;
    
    //load more
    int pageNum = 3;
    
    _head = [MJRefreshNormalHeader header];
    _head.scrollView = self.chatTableView;
    _head.beginRefreshingBlock = ^(MJRefreshBaseView *refreshView) {
        
        [weakSelf.chatModel addRandomItemsToDataSource:pageNum];
        
        if (weakSelf.chatModel.dataSource.count > pageNum) {
            NSIndexPath *indexPath = [NSIndexPath indexPathForRow:pageNum inSection:0];
            
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                [weakSelf.chatTableView reloadData];
                [weakSelf.chatTableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:NO];
            });
        }
        [weakSelf.head endRefreshing];
    };
}

- (void)loadBaseViewsAndData
{
    self.chatModel = [[ChatModel alloc]init];
    self.chatModel.isGroupChat = NO;
    [self.chatModel populateRandomDataSource];
    
    IFView = [[UUInputFunctionView alloc]initWithSuperVC:self];
    IFView.delegate = self;
    [self.view addSubview:IFView];
    
    [self.chatTableView reloadData];
    [self tableViewScrollToBottom];
}
-(void)keyboardChange:(NSNotification *)notification
{
    NSDictionary *userInfo = [notification userInfo];
    NSTimeInterval animationDuration;
    UIViewAnimationCurve animationCurve;
    CGRect keyboardEndFrame;
    
    [[userInfo objectForKey:UIKeyboardAnimationCurveUserInfoKey] getValue:&animationCurve];
    [[userInfo objectForKey:UIKeyboardAnimationDurationUserInfoKey] getValue:&animationDuration];
    [[userInfo objectForKey:UIKeyboardFrameEndUserInfoKey] getValue:&keyboardEndFrame];
    
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:animationDuration];
    [UIView setAnimationCurve:animationCurve];
    
    //adjust ChatTableView's height
    if (notification.name == UIKeyboardWillShowNotification) {
        self.bottomConstraint.constant = keyboardEndFrame.size.height+40;
    }else{
        self.bottomConstraint.constant = 40;
    }
    
    [self.view layoutIfNeeded];
    
    //adjust UUInputFunctionView's originPoint
    CGRect newFrame = IFView.frame;
    newFrame.origin.y = keyboardEndFrame.origin.y - newFrame.size.height;
    IFView.frame = newFrame;
    
    [UIView commitAnimations];
    
}

//tableView Scroll to bottom
- (void)tableViewScrollToBottom
{
    if (self.chatModel.dataSource.count==0)
        return;
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:self.chatModel.dataSource.count-1 inSection:0];
    NSLog(@"消息的条数为：%ld",self.chatModel.dataSource.count);
    [self.chatTableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionBottom animated:YES];
}


#pragma mark - InputFunctionViewDelegate
- (void)UUInputFunctionView:(UUInputFunctionView *)funcView sendMessage:(NSString *)message
{
    NSDictionary *dic = @{@"strContent": message,
                          @"type": @(UUMessageTypeText)};
    funcView.TextViewInput.text = @"";
    [funcView changeSendBtnWithPhoto:YES];
    [self dealTheFunctionData:dic];
}

- (void)UUInputFunctionView:(UUInputFunctionView *)funcView sendPicture:(UIImage *)image
{
    NSDictionary *dic = @{@"picture": image,
                          @"type": @(UUMessageTypePicture)};
    [self dealTheFunctionData:dic];
}

- (void)UUInputFunctionView:(UUInputFunctionView *)funcView sendVoice:(NSData *)voice time:(NSInteger)second
{
    NSDictionary *dic = @{@"voice": voice,
                          @"strVoiceTime": [NSString stringWithFormat:@"%d",(int)second],
                          @"type": @(UUMessageTypeVoice)};
    [self dealTheFunctionData:dic];
}

- (void)dealTheFunctionData:(NSDictionary *)dic
{
    [self.chatModel addSpecifiedItem:dic];
    [self.chatTableView reloadData];
    [self tableViewScrollToBottom];
}

#pragma mark - tableView delegate & datasource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@"消息的条数为02：%ld",self.chatModel.dataSource.count);
    return self.chatModel.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UUMessageCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    if (cell == nil) {
        cell = [[UUMessageCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CellID"];
        cell.delegate = self;
    }
    [cell setMessageFrame:self.chatModel.dataSource[indexPath.row]];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [self.chatModel.dataSource[indexPath.row] cellHeight];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [self.view endEditing:YES];
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    [self.view endEditing:YES];
}

#pragma mark - cellDelegate
- (void)headImageDidClick:(UUMessageCell *)cell userId:(NSString *)userId{
    // headIamgeIcon is clicked

}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [[NSNotificationCenter defaultCenter]removeObserver:self];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)dealloc{
    [_head free];
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
