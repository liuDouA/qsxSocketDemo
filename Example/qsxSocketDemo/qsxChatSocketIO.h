//
//  qsxChatSocketIO.h
//  qsxSocketDemo_Example
//
//  Created by liudou on 2019/6/10.
//  Copyright © 2019 liudouA. All rights reserved.
//

#import <Foundation/Foundation.h>
@import SocketIO;
NS_ASSUME_NONNULL_BEGIN

@interface qsxChatSocketIO : NSObject

/*!
 @property 客户端socket
 @abstract 客户端socket
 */
@property (nonatomic, strong) SocketIOClient *clientSocket;


/*!
 @property 客户端socket
 @abstract 客户端socket
 */
@property (nonatomic, strong) SocketManager *clientManager;


+(qsxChatSocketIO *)shareqsxChatSocketIO;
- (void)initSocketio;
@end

NS_ASSUME_NONNULL_END
