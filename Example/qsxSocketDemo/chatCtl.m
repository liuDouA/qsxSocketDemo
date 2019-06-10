//
//  chatCtl.m
//  qsxSocketDemo_Example
//
//  Created by liudou on 2019/6/10.
//  Copyright © 2019 liudouA. All rights reserved.
//

#import "chatCtl.h"
#import "qsxChatSocketIO.h"
#import "qsx_chatModelView.h"
@interface chatCtl ()
@property (nonatomic,strong)qsxChatSocketIO *socketio;
@property (nonatomic,strong)qsx_chatModelView *chatView;
@end

@implementation chatCtl

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor= [UIColor whiteColor];

    _socketio = [qsxChatSocketIO shareqsxChatSocketIO];
    [_socketio initSocketio];
    
    _chatView =[[qsx_chatModelView alloc]initWithFrame:CGRectMake(0, 64, ScreenWidth,ScreenHight-64 )];
    [self.view addSubview:_chatView];
    
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
