//
//  qsxChatSocketIO.m
//  qsxSocketDemo_Example
//
//  Created by liudou on 2019/6/10.
//  Copyright © 2019 liudouA. All rights reserved.
//

#import "qsxChatSocketIO.h"

@implementation qsxChatSocketIO
+ (qsxChatSocketIO *)shareqsxChatSocketIO
{
    static qsxChatSocketIO *socketObj = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        socketObj = [[qsxChatSocketIO alloc]init];
    });
    return socketObj;
}
- (void)initSocketio
{
    NSDictionary *dic =@{@"log": @YES,
                         @"forceWebsockets": @NO,
                         @"forcePolling": @NO,
                         @"compress": @YES,
                         @"reconnectAttempts":@(-1),
                         @"forceNew": @YES,
                         @"reconnectAttempts": @5,
                         @"extraHeaders": @{@"User-Agent": @"User-Agent"},
                         };
    
    if (!_clientSocket) {
        NSURL* url = [[NSURL alloc] initWithString:@"https://socket-io-chat.now.sh"];

        self.clientManager = [[SocketManager alloc] initWithSocketURL:url config:dic];
        self.clientSocket =self.clientManager.defaultSocket;
        
        //有地址可用下面声明
        //    socket = [manager socketForNamespace:@"/action/hi"];
        //监听 connect  断开 或者链接  都会有回调
        [self.clientSocket on:@"connect" callback:^(NSArray* data, SocketAckEmitter* ack) {
            NSLog(@"socket connected");
        }];
        
        [self.clientSocket onAny:^(SocketAnyEvent * ack) {
            NSLog(@"onAny==%@",ack.description);
        }];
        
        [self.clientSocket on:@"new message" callback:^(NSArray * _Nonnull data, SocketAckEmitter * _Nonnull ack) {
            NSLog(@"new message is %@", data);
            // 发送数据
            //不知道定义的emit 事件  不能测试
            // [self.clientSocket emit:@"data" with:@[@"ssssslslsllslslslsl"]];
        }];
        
        [self.clientSocket connect];
        
        
    }
   
    
    
}
@end
