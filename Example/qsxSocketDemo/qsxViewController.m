//
//  qsxViewController.m
//  qsxSocketDemo
//
//  Created by liudouA on 05/27/2019.
//  Copyright (c) 2019 liudouA. All rights reserved.
//

#import "qsxViewController.h"
#import "qsxChatSocketIO.h"
#import "chatCtl.h"

@interface qsxViewController ()

@property (nonatomic,strong)qsxChatSocketIO *socketio;
@end

@implementation qsxViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    _socketio = [qsxChatSocketIO shareqsxChatSocketIO];
    [_socketio initSocketio];
    self.view.backgroundColor= [UIColor whiteColor];
    
    UIButton *bbb = [UIButton buttonWithType:UIButtonTypeCustom];
    bbb.backgroundColor = [UIColor redColor];
    bbb.frame = CGRectMake(100, 100, 100, 100);
    [bbb addTarget:self action:@selector(send) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:bbb];
}
- (void)send{
    chatCtl *chat = [[chatCtl alloc]init];
    [self.navigationController pushViewController:chat animated:YES];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
